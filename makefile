# Using makefile to generate commands that are associated with other commands

# Define dependencies
VERSION         := 0.0.1
SERVICE_NAME    := chat-api
SERVICE_IMAGE   := $(SERVICE_NAME):$(VERSION)
# ===========================================================================


# Do both go mod tidy & vendor
tidy:
		go mod tidy
		go mod vendor

dockerize-service:
	docker build \
		-f zarf/docker/dockerfile.service \
		-t $(SERVICE_IMAGE) \
		--build-arg BUILD_REF=$(VERSION) \
		--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
		.

docker-compose-up:
	docker compose \
	-f "zarf\docker\docker-compose.service.yaml" \
	up -d --build 