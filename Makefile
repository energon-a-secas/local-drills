version:
	@localstack --version

install:
	@brew install localstack/tap/localstack-cli
	@pipx install awscli-local
	@docker extension install localstack/localstack-docker-desktop:0.5.3

run:
	@docker-compose up

troubleshooting:
	@pipx ensurepath