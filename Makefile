ROOT_DIR := $(shell dirname "$(realpath $(MAKEFILE_LIST))")

.PHONY = test

test:
	cd $(ROOT_DIR) && \
	PYTHONPATH=$(PWD)/src pytest -v . && \
	PYTHONPATH=$(PWD)/src mypy .
