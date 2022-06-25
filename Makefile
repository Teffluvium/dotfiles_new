
.PHONY: help
.PHONY: install macos brew-save brew-restore vscode-save vscode-restore save-all
.DEFAULT_GOAL := help

# List the make targets
HELP_FORMAT="    \033[36m%-25s\033[0m %s\n"
help: ## Display this usage information
	@echo "Valid targets:"
	@grep -E '^[^ ]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		sort | \
		awk 'BEGIN {FS = ":.*?## "}; \
			{printf $(HELP_FORMAT), $$1, $$2}'

install: ## Run dotbot install script
	./install

vscode-install: ## Install extensions from vscode/extensions.txt
	cat ${DOTFILES}/vscode/extensions.txt | xargs -L 1 code --install-extension

vscode-save: ## Save all current extensions to vscode/extensions.txt
	code --list-extensions > ${DOTFILES}/vscode/extensions.txt

brew-save: ## Save snapshot of all Homebrew packages to macos/Brewfile
	brew bundle dump -f --file=macos/Brewfile
	brew bundle --force cleanup --file=macos/Brewfile

brew-restore: ## Restore Homebrew packages
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew update
	brew upgrade
	brew install mas
	brew bundle install --file=macos/Brewfile
	brew cleanup

macos: ## Set MacOS defaults
	./macos/set-defaults.sh

save-all: brew-save vscode-save ## Run all of the "save" targets

