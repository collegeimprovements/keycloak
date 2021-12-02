# Commands:

## To restart the services:
```bash
make restart
```

## To start the services:
```bash
make up
```

## To stop the services:
```bash
make down
```

## To monitor logs:
```bash
make logs
```

# Keycloak Page URL:
## http://localhost:8080/

=> Change localhost to `domain_name` or `ip` as per setup.

```
openssl req -x509 -sha256 -days 3650 -newkey rsa:4096 -keyout rootCA.key -out rootCA.crt
openssl req -new -newkey rsa:4096 -keyout tls.key -out tls.csr -nodes
openssl x509 -req -CA rootCA.crt -CAkey rootCA.key -in tls.csr -out tls.crt -days 365 -CAcreateserial -extfile localhost.ext

```
