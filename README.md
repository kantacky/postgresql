# PostgreSQL

## Quickstart
```
make run
```

## SSL/TLS
- `data/ca.crt`
- `data/server.crt`
- `data/server.key`

## Configuration
### `data/postgresql.conf`
```diff
- #ssl = off
+ ssl = on

- #ssl_ca_file = ''
+ ssl_ca_file='ca.crt'

- #ssl_cert_file = 'server.crt'
+ ssl_cert_file='server.crt'

- #ssl_ca_file = 'server.key'
+ ssl_key_file='server.key'

- #ssl_min_protocol_version = 'TLSv1.2'
+ ssl_min_protocol_version = 'TLSv1.3'
```

### `data/pg_hba.conf`
```diff
# TYPE  DATABASE        USER            ADDRESS                 METHOD

- # host all all all scram-sha-256
+ hostssl all all all cert map=postgres
```

### `data/pg_ident.conf`
```diff
# MAPNAME       SYSTEM-USERNAME         PG-USERNAME

+ postgres kantacky postgres
+ postgres gcp postgres
```

&copy; 2024 Kanta Oikawa

