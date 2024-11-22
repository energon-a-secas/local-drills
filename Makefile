REQUIRED_TOOLS := aws curl jq docker
BREW_TOOLS := aws jq

.PHONY: check-requirements install-tools

check-requirements:
	@echo "Checking for required tools..."
	@for tool in $(REQUIRED_TOOLS) ; do \
		if ! command -v $$tool >/dev/null 2>&1; then \
			echo "Missing required tool: $$tool"; \
			exit 1; \
		fi; \
		echo "✓ $$tool: $$(which $$tool)"; \
	done

install-tools:
	@echo "Installing required tools..."
	@if ! command -v brew >/dev/null 2>&1; then \
		echo "Installing Homebrew..."; \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
	fi
	brew install $(BREW_TOOLS)