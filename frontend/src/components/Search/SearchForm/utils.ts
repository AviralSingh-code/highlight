export type SearchParam = {
	key: string
	operator: string
	value: string
	offsetStart: number
}

const SEPARATOR = ':'
export const DEFAULT_OPERATOR = '='
export const BODY_KEY = 'message'

// Inspired by search-query-parser:
// https://github.com/nepsilon/search-query-parser/blob/8158d09c70b66168440e93ffabd720f4c8314c9b/lib/search-query-parser.js#L40
// We've extended it to support parenthesis.
const PARSE_REGEX =
	/(\S+:'(?:[^'\\]|\\.)*')|(\S+:"(?:[^"\\]|\\.)*")|(-?"(?:[^"\\]|\\.)*")|(-?'(?:[^'\\]|\\.)*')|(\S+:\((?:[^\)\\]|\\.)*\))|\S+|\S+:\S+|\s$/g

const WHITESPACE_REGEX =
	/\s+(?=(?:[^"]*"[^"]*")*[^"]*$)(?=(?:[^']*'[^']*')*[^']*$)(?=(?:[^()]*\([^()]*\))*[^()]*$)/g

export const parseSearchQuery = (query = ''): SearchParam[] => {
	if (query.indexOf(SEPARATOR) === -1) {
		return [
			{
				key: BODY_KEY,
				operator: DEFAULT_OPERATOR,
				value: query,
				offsetStart: 0,
			},
		]
	}

	const terms = []
	let match

	while ((match = PARSE_REGEX.exec(query)) !== null) {
		const term = match[0]
		const termIsQuotedString = term.startsWith('"') || term.startsWith("'")

		if (!termIsQuotedString && term.indexOf(SEPARATOR) > -1) {
			const [key, ...rest] = term.split(SEPARATOR)
			const value = rest.join(SEPARATOR)

			terms.push({
				key,
				value,
				operator: DEFAULT_OPERATOR,
				offsetStart: match.index,
			})
		} else {
			const textTermIndex = terms.findIndex(
				(term) => term.key === BODY_KEY,
			)

			if (textTermIndex !== -1) {
				terms[textTermIndex].value +=
					terms[textTermIndex].value.length > 0 ? ` ${term}` : term
			} else {
				const isEmptyString = term.trim() === ''

				terms.push({
					key: BODY_KEY,
					operator: DEFAULT_OPERATOR,
					value: isEmptyString ? '' : term,
					offsetStart: isEmptyString ? match.index + 1 : match.index,
				})
			}
		}
	}

	return terms
}

// Takes a query string and returns an array of strings and the whitespace
// between them. This is useful for highlighting search terms in the query.
//
// input: ' body-a   source:(backend OR frotend) body-b  name:"Chris Schmitz" body-c '
// output: [' ', 'body-a', '   ', 'source:(backend OR frotend)', ' ', 'body-b', '  ', 'name:"Chris Schmitz"', ' ', 'body-c']
export const queryAsStringParams = (query: string): string[] => {
	const q = String(query)
	const startsWithSpace = q.startsWith(' ')
	const params = q.split(WHITESPACE_REGEX).filter(Boolean) || []
	const whitespace = q.match(WHITESPACE_REGEX) || []
	const longestArray = params.length > whitespace.length ? params : whitespace

	return longestArray.reduce((acc: string[], _: string, index: number) => {
		if (startsWithSpace && whitespace[index]) {
			acc.push(whitespace[index])
		}

		if (params[index]) {
			acc.push(params[index])
		}

		if (!startsWithSpace && whitespace[index]) {
			acc.push(whitespace[index])
		}

		return acc
	}, [])
}

export const SEPARATORS = [
	'AND',
	'OR',
	'!=',
	'>=',
	'<=',
	'<',
	'>',
	':',
	'=',
	'(',
	')',
	'*',
]

const escapedSeparators = SEPARATORS.map((separator) =>
	separator.replace(/[.*+?^${}()|[\]\\]/g, '\\$&'),
)

export const tokenAsParts = (token: string): string[] => {
	return token
		.split(new RegExp(`(${escapedSeparators.join('|')})`, 'g'))
		.filter(Boolean)
}

export const stringifySearchQuery = (params: SearchParam[]) => {
	const querySegments: string[] = []

	params.forEach(({ key, value }) => {
		if (key === BODY_KEY) {
			querySegments.push(value)
		} else {
			querySegments.push(`${key}:${value}`)
		}
	})

	return querySegments.join(' ')
}

// Same as the method above, but only used for building a query string to send
// to the server which requires that all strings are wrapped in double quotes.
export const buildSearchQueryForServer = (params: SearchParam[]) => {
	const querySegments: string[] = []

	params.forEach(({ key, value }) => {
		value = value.trim()

		if (value.startsWith("'") && value.endsWith("'")) {
			value = `"${value.slice(1, -1)}"`
		}

		if (key === BODY_KEY) {
			querySegments.push(value)
		} else {
			querySegments.push(`${key}:${value}`)
		}
	})

	return querySegments.join(' ')
}

export const validateSearchQuery = (params: SearchParam[]): boolean => {
	return !params.some((param) => !param.value)
}

export const quoteQueryValue = (value: string | number) => {
	if (typeof value !== 'string') {
		return String(value)
	}

	if (value.startsWith('"') || value.startsWith("'")) {
		return value
	}

	if (value.indexOf(' ') > -1) {
		return `"${value}"`
	}

	return value
}
