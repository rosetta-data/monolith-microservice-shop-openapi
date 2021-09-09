client: openapi.yaml
	docker run --rm -v "${PWD}:/local" \
	openapitools/openapi-generator-cli \
	generate -i /local/$< -g go -o /local/client --git-user-id waffleboot --git-repo-id monolith-microservice-shop-openapi

server: openapi.yaml
	docker run --rm -v "${PWD}:/local" \
	openapitools/openapi-generator-cli \
	generate -i /local/$< -g go-server -o /local/server --git-user-id waffleboot --git-repo-id monolith-microservice-shop-openapi
