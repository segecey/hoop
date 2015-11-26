SHELL=/bin/bash
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

deps:
	@sh -c "'$(CURDIR)/scripts/deps.sh'"


install:
	@sh -c "'$(CURDIR)/scripts/install.sh'"

.PHONY: deps install
