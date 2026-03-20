.PHONY: help install serve clean

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-10s %s\n", $$1, $$2}'

install: ## Install gem dependencies
	bundle install

serve: ## Start dev server with live reload
	bundle exec jekyll serve --livereload

clean: ## Remove generated _site folder
	bundle exec jekyll clean
