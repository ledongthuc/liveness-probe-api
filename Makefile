GOCMD=go
GOBUILD=$(GOCMD) build
GORUN=$(GOCMD) run 
GOTEST=$(GOCMD) test
BINARY_NAME=liveness-probe-api
DOCKER_IMG_NAME=$(BINARY_NAME)

all: test build
build: 
	$(GOBUILD) -o $(BINARY_NAME) -v
run:
	$(GORUN) -o $(BINARY_NAME) -v
docker-build:
	docker build -t ledongthuc/$(DOCKER_IMG_NAME):local .
