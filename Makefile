.PHONY: build
build:
	@docker build -t sw9k/helloworld .

.PHONY: run
run:
	@docker run -it --rm sw9k/helloworld

.PHONY: push
push:
	@docker push sw9k/helloworld:latest

.PHONY: delete
delete:
	-@docker rmi sw9k/helloworld

_prune:
	-@docker image prune --force
	-@docker container prune --force

# simple change

