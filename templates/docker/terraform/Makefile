VERSION=local
NAME="terraform"
REPOSITORY="energ0n"
IMAGE=$(REPOSITORY)/$(NAME)

build: # Builds container locally
	@/bin/echo -n "Building image for $(NAME):$(VERSION)"
	@docker build -t $(IMAGE):$(VERSION) .
	@docker tag $(IMAGE):$(VERSION) $(NAME):latest

run: # Runs local image
	@docker run -it --rm --name $(NAME) $(IMAGE):$(VERSION)

compose: # Runs local image
	@docker-compose run --rm --name=$(NAME) $(NAME)

local: build run

remote: # Checks public image published by Gitlab CICD based on branch name
	$(eval GIT_BRANCH=$(shell git rev-parse --abbrev-ref HEAD))
	@docker run -it --rm --name $(NAME) $(IMAGE):$(GIT_BRANCH)
