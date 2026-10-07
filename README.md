# marketplace-lite

A small marketplace platform. Sellers upload product feeds, a Go service validates them and serves the catalog over REST, and a Symfony storefront lets shoppers compare offers.

## Components

| Component | Description |
|---|---|
| `catalog-service` | Go REST service for products, offers and feed imports |
| `storefront` | Symfony app rendering the shop pages (planned) |

## Running locally

Requires Go 1.24+.

```bash
make run
curl localhost:8080/healthz
```

### Configuration

| Variable | Default | Description |
|---|---|---|
| `HTTP_ADDR` | `:8080` | Listen address |
| `LOG_LEVEL` | `info` | `debug`, `info`, `warn` or `error` |
| `SHUTDOWN_TIMEOUT` | `10s` | Time allowed for in-flight requests on shutdown |