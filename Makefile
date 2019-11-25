DOCKER_TAG := devenv_compile_vimgobinaries

bin:
	docker build -t $(DOCKER_TAG) .
	docker create --name $(DOCKER_TAG) $(DOCKER_TAG)
	docker cp $(DOCKER_TAG):/vimgobin $(PWD)/bin
	docker rm $(DOCKER_TAG)
	docker rmi $(DOCKER_TAG)
