tag := $$(git rev-parse --abbrev-ref @)-$$(git rev-parse --short @)

.PHONY: all up clean lint test build push

all: 
	docker-compose build

up:
	docker-compose up -d

clean:
	docker-compose down

lint:
	docker exec -it fastapi sh -c "pylint app"

test:
	docker exec -it fastapi sh -c "pytest"

build:
ifeq ($(filter-out build, $(MAKECMDGOALS)),)
	@docker build -f api/Dockerfile api -t fastapi:$(tag)
	@docker build -f nextjs/nextjs-blog/Dockerfile nextjs/nextjs-blog -t nextjs:$(tag)
else
	@docker build -f api/Dockerfile api -t fastapi:$(filter-out $@, $(MAKECMDGOALS))
	@docker build -f nextjs/nextjs-blog/Dockerfile nextjs/nextjs-blog -t nextjs:$(filter-out $@, $(MAKECMDGOALS))
endif

push:
ifeq ($(origin CR_PAT),undefined)
	@echo "Please set PAT environmnent var before running this command."
	@echo "E.g. 'CR_PAT=XXXXXX; export CR_PAT'"
else
ifeq ($(filter-out push, $(MAKECMDGOALS)),)
	@echo "Please provide an image tag to push: e.g. 'make push <imagetag>'"
else
	@echo $(CR_PAT) | docker login ghcr.io -u cmcaughren --password-stdin
	docker tag fastapi:$(filter-out $@, $(MAKECMDGOALS)) ghcr.io/cmcaughren/fastapi-nextjs-explore/fastapi:$(filter-out $@, $(MAKECMDGOALS))
	docker tag nextjs:$(filter-out $@, $(MAKECMDGOALS)) ghcr.io/cmcaughren/fastapi-nextjs-explore/nextjs:$(filter-out $@, $(MAKECMDGOALS))
	docker push ghcr.io/cmcaughren/fastapi-nextjs-explore/fastapi:$(filter-out $@, $(MAKECMDGOALS))
	docker push ghcr.io/cmcaughren/fastapi-nextjs-explore/nextjs:$(filter-out $@, $(MAKECMDGOALS))
endif
endif

%:
	@:
