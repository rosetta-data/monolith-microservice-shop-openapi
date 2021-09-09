generate: openapi.yaml
	docker run --rm -v "${PWD}:/local" \
	openapitools/openapi-generator-cli \
	generate -i /local/$< -g go -o /local --git-user-id waffleboot --git-repo-id monolith-microservice-shop-openapi

