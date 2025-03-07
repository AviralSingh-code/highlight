module github.com/highlight-run/highlight/backend

go 1.21

toolchain go1.21.3

replace golang.org/x/crypto => golang.org/x/crypto v0.1.0

replace gopkg.in/yaml.v3 => gopkg.in/yaml.v3 v3.0.1

replace github.com/tidwall/gjson => github.com/tidwall/gjson v1.14.3

replace golang.org/x/net => golang.org/x/net v0.1.0

replace github.com/tidwall/match => github.com/tidwall/match v1.1.1

replace golang.org/x/text => golang.org/x/text v0.8.0

replace nhooyr.io/websocket => nhooyr.io/websocket v1.8.7

replace github.com/highlight/highlight/sdk/highlight-go => ../sdk/highlight-go

require (
	firebase.google.com/go v3.13.0+incompatible
	github.com/99designs/gqlgen v0.17.24
	github.com/DmitriyVTitov/size v1.1.0
	github.com/PaesslerAG/jsonpath v0.1.1
	github.com/andybalholm/brotli v1.0.6
	github.com/aws/aws-sdk-go-v2 v1.16.15
	github.com/aws/aws-sdk-go-v2/config v1.8.3
	github.com/aws/aws-sdk-go-v2/feature/cloudfront/sign v1.3.5
	github.com/aws/aws-sdk-go-v2/service/s3 v1.16.1
	github.com/aws/smithy-go v1.13.5
	github.com/bradleyfalzon/ghinstallation/v2 v2.3.0
	github.com/clearbit/clearbit-go v1.0.1
	github.com/dchest/uniuri v0.0.0-20200228104902-7aecb25e1fe5
	github.com/disintegration/imaging v1.6.2
	github.com/go-chi/chi v4.1.2+incompatible
	github.com/go-oauth2/oauth2/v4 v4.5.2
	github.com/go-redis/cache/v9 v9.0.0
	github.com/go-redsync/redsync/v4 v4.8.1
	github.com/go-sourcemap/sourcemap v2.1.3+incompatible
	github.com/go-test/deep v1.1.0
	github.com/golang-jwt/jwt v3.2.2+incompatible
	github.com/golang-jwt/jwt/v4 v4.5.0
	github.com/golang/snappy v0.0.4
	github.com/google/go-github/v50 v50.2.0
	github.com/google/uuid v1.4.0
	github.com/gorilla/websocket v1.5.0
	github.com/hashicorp/go-retryablehttp v0.7.4
	github.com/highlight-run/workerpool v1.3.0
	github.com/highlight/go-oauth2-redis/v4 v4.1.4
	github.com/highlight/highlight/sdk/highlight-go v0.9.13
	github.com/influxdata/go-syslog/v3 v3.0.0
	github.com/jackc/pgconn v1.10.1
	github.com/kylelemons/godebug v1.1.0
	github.com/lib/pq v1.10.4
	github.com/lukasbob/srcset v0.0.0-20190730101422-86b742e617f3
	github.com/mitchellh/mapstructure v1.5.0
	github.com/mssola/user_agent v0.5.3
	github.com/openlyinc/pointy v1.1.2
	github.com/pkg/errors v0.9.1
	github.com/redis/go-redis/v9 v9.3.0
	github.com/rs/cors v1.7.0
	github.com/rs/xid v1.4.0
	github.com/samber/lo v1.38.1
	github.com/sashabaranov/go-openai v1.14.1
	github.com/segmentio/kafka-go v0.4.42
	github.com/sendgrid/sendgrid-go v3.7.0+incompatible
	github.com/shirou/gopsutil v3.21.11+incompatible
	github.com/sirupsen/logrus v1.9.3
	github.com/slack-go/slack v0.10.3
	github.com/speps/go-hashids v2.0.0+incompatible
	github.com/stripe/stripe-go/v76 v76.7.0
	github.com/urfave/cli/v2 v2.25.5
	github.com/vektah/gqlparser/v2 v2.5.1
	go.opentelemetry.io/collector/pdata v0.66.0
	go.opentelemetry.io/otel v1.21.0
	go.opentelemetry.io/otel/trace v1.21.0
	golang.org/x/oauth2 v0.13.0
	golang.org/x/sync v0.4.0
	golang.org/x/text v0.14.0
	google.golang.org/api v0.149.0
	gorm.io/driver/postgres v1.0.8
	gorm.io/gorm v1.21.9
)

require (
	cloud.google.com/go/compute v1.23.3 // indirect
	cloud.google.com/go/compute/metadata v0.2.3 // indirect
	cloud.google.com/go/iam v1.1.5 // indirect
	cloud.google.com/go/longrunning v0.5.4 // indirect
	github.com/ClickHouse/ch-go v0.51.0 // indirect
	github.com/PaesslerAG/gval v1.2.0 // indirect
	github.com/ProtonMail/go-crypto v0.0.0-20230217124315-7d5c6f04bbb8 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.1.22 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.4.16 // indirect
	github.com/cenkalti/backoff/v4 v4.2.1 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/cloudflare/circl v1.3.3 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/fatih/color v1.15.0 // indirect
	github.com/go-chi/chi/v5 v5.0.10 // indirect
	github.com/go-faster/city v1.0.1 // indirect
	github.com/go-faster/errors v0.6.1 // indirect
	github.com/go-logr/logr v1.3.0 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-ole/go-ole v1.2.6 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/google/s2a-go v0.1.7 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.3.2 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.18.1 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-cleanhttp v0.5.2 // indirect
	github.com/hashicorp/go-hclog v1.5.0 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/golang-lru v0.5.4 // indirect
	github.com/huandu/xstrings v1.3.2 // indirect
	github.com/imdario/mergo v0.3.12 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/marconi/go-resthooks v0.0.0-20190225103922-ad217f832acb // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/paulmach/orb v0.8.0 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/rs/zerolog v1.28.0 // indirect
	github.com/segmentio/asm v1.2.0 // indirect
	github.com/shopspring/decimal v1.3.1 // indirect
	github.com/tdewolff/test v1.0.7 // indirect
	github.com/tidwall/btree v1.1.0 // indirect
	github.com/tidwall/buntdb v1.2.0 // indirect
	github.com/tidwall/gjson v1.14.3 // indirect
	github.com/tidwall/grect v0.1.4 // indirect
	github.com/tidwall/match v1.1.1 // indirect
	github.com/tidwall/pretty v1.2.0 // indirect
	github.com/tidwall/rtred v0.1.2 // indirect
	github.com/tidwall/tinyqueue v0.1.1 // indirect
	github.com/vmihailenco/go-tinylfu v0.2.2 // indirect
	github.com/vmihailenco/msgpack/v5 v5.3.4 // indirect
	github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
	github.com/xdg-go/pbkdf2 v1.0.0 // indirect
	github.com/xdg-go/scram v1.1.2 // indirect
	github.com/xdg-go/stringprep v1.0.4 // indirect
	github.com/xrash/smetrics v0.0.0-20201216005158-039620a65673 // indirect
	github.com/yusufpapurcu/wmi v1.2.2 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.21.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp v1.21.0 // indirect
	go.opentelemetry.io/otel/metric v1.21.0 // indirect
	go.opentelemetry.io/otel/sdk v1.21.0 // indirect
	go.opentelemetry.io/proto/otlp v1.0.0 // indirect
	go.uber.org/atomic v1.10.0 // indirect
	go.uber.org/goleak v1.3.0 // indirect
	go.uber.org/multierr v1.9.0 // indirect
	golang.org/x/image v0.13.0 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20231127180814-3a041ad873d4 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20231127180814-3a041ad873d4 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

require (
	cloud.google.com/go v0.110.10 // indirect
	cloud.google.com/go/firestore v1.14.0 // indirect
	cloud.google.com/go/storage v1.33.0 // indirect
	github.com/ClickHouse/clickhouse-go/v2 v2.5.1
	github.com/ReneKroon/ttlcache v1.7.0
	github.com/agnivade/levenshtein v1.1.1 // indirect
	github.com/aws/aws-lambda-go v1.34.1
	github.com/aws/aws-sdk-go-v2/credentials v1.4.3 // indirect
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.6.0 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.2.4 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.3.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.3.2 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/s3shared v1.7.2 // indirect
	github.com/aws/aws-sdk-go-v2/service/sfn v1.14.0
	github.com/aws/aws-sdk-go-v2/service/sso v1.4.2 // indirect
	github.com/aws/aws-sdk-go-v2/service/sts v1.7.2 // indirect
	github.com/bwmarrin/discordgo v0.26.1
	github.com/cpuguy83/go-md2man/v2 v2.0.2 // indirect
	github.com/dghubble/sling v1.1.0 // indirect
	github.com/gammazero/deque v0.1.0 // indirect
	github.com/go-chi/httplog v0.2.5
	github.com/go-redis/redis/v8 v8.11.5 // indirect
	github.com/golang-migrate/migrate/v4 v4.15.2
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/go-querystring v1.1.0 // indirect
	github.com/googleapis/gax-go/v2 v2.12.0 // indirect
	github.com/highlight-run/go-resthooks v0.0.0-20220523054100-bf95aa850a20
	github.com/huandu/go-sqlbuilder v1.20.0
	github.com/jackc/chunkreader/v2 v2.0.1 // indirect
	github.com/jackc/pgerrcode v0.0.0-20220416144525-469b46aa5efa
	github.com/jackc/pgio v1.0.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgproto3/v2 v2.2.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20200714003250-2b9c44734f2b // indirect
	github.com/jackc/pgtype v1.9.0 // indirect
	github.com/jackc/pgx/v4 v4.14.0 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/jinzhu/now v1.1.5 // indirect
	github.com/klauspost/compress v1.17.4 // indirect
	github.com/nqd/flat v0.2.0
	github.com/pierrec/lz4/v4 v4.1.17 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/sendgrid/rest v2.6.2+incompatible // indirect
	github.com/stretchr/testify v1.8.4
	github.com/tdewolff/parse v2.3.4+incompatible
	go.opencensus.io v0.24.0 // indirect
	golang.org/x/crypto v0.16.0 // indirect
	golang.org/x/exp v0.0.0-20230206171751-46f607a40771
	golang.org/x/net v0.19.0 // indirect
	golang.org/x/sys v0.15.0 // indirect
	golang.org/x/time v0.3.0 // indirect
	golang.org/x/xerrors v0.0.0-20220907171357-04be3eba64a2 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20231127180814-3a041ad873d4 // indirect
	google.golang.org/grpc v1.59.0 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
)
