export AWS_ACCESS_KEY_ID ?= test
export AWS_SECRET_ACCESS_KEY ?= test
export AWS_DEFAULT_REGION = us-east-1

version:
	@localstack --version

install:
	@brew install localstack/tap/localstack-cli
	@pipx install awscli-local
	@docker extension install localstack/localstack-docker-desktop:0.5.3

run:
	@docker-compose run --rm --name=localstack localstack

run-app:
	@docker-compose run --rm --name=serverless-app serverless-app

troubleshooting:
	@pipx ensurepath

.PHONY: version install run troubleshooting