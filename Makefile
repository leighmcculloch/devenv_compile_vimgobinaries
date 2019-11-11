DOCKER_TAG := devenv_compile_vimgobinaries
VERSION = $(shell date +%Y%m%d%H%M%s)

bin:
	docker build -t $(DOCKER_TAG) .
	docker create --name $(DOCKER_TAG) $(DOCKER_TAG)
	docker cp $(DOCKER_TAG):/vimgobin $(PWD)/bin
	docker rm $(DOCKER_TAG)
	docker rmi $(DOCKER_TAG)

upload: bin
	@echo $(VERSION)
	@test -z "$(git status -s)" || (echo "A clean working directory is required to upload." ; exit 1)
	curl -uleighmcculloch:$(BINTRAY_API_KEY) 'https://api.bintray.com/content/leighmcculloch/devenv/vimgobinaries/$(VERSION)/ruby-$(VERSION).tar.gz' -T ruby/ruby-$(VERSION).tar.bz2
	curl -uleighmcculloch:$(BINTRAY_API_KEY) 'https://api.bintray.com/content/leighmcculloch/devenv/vimgobinaries/$(VERSION)/publish' -X POST -d '{"discard":"false"}'

clean:
	rm -fr ruby
