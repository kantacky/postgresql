.PHONY: run

run:
	docker \
    run \
    --rm \
    --name postgresql \
    -e POSTGRES_PASSWORD=postgres \
    -v ./data:/var/lib/postgresql/data \
    -p 5432:5432 \
    -d \
    postgres:16

