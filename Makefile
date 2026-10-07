SERVICE := catalog-service
IMAGE   := marketplace-lite/catalog:dev

run:
	go -C $(SERVICE) run ./cmd/catalog

test:
	go -C $(SERVICE) test ./...

vet:
	go -C $(SERVICE) vet ./...

build:
	go -C $(SERVICE) build -o bin/catalog ./cmd/catalog

docker:
	docker build -t $(IMAGE) $(SERVICE)

.PHONY: run test vet build docker
