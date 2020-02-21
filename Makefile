STACK_VERSION ?= v0.2.0
STACK_IMG ?= crossplane/stack-minimal-azure:$(STACK_VERSION)

build:
	docker build . -t ${STACK_IMG}
.PHONY: build

publish:
	docker push ${STACK_IMG}
.PHONY: publish
