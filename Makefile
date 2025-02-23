WORKING_DIR=/tmp/talon-client
VERSION:=$(shell grep -om1 -E "VERSION\s\=\s'[0-9\.]+'" $(PWD)/lib/talon_one/version.rb | sed "s/VERSION\s\=\s'\(.*\)'/\1/")
GEM_CREDENTIALS_LOCATION:=~/.gem
GEM_CREDENTIALS_FILE:=$(GEM_CREDENTIALS_LOCATION)/credentials

default: testenv

clean:
	find -name "talon_one*.gem" -delete -print

build: clean
	docker run \
		--rm \
		-v $(PWD):$(WORKING_DIR) \
		-w $(WORKING_DIR) \
		ruby:2.7 \
		gem build talon_one.gemspec

publish: build
ifeq ($(VERSION),)
	@echo "***\033[0;31mERROR:\033[0m NO VERSION COULD BE EXTRACTED. Check out the lib/talon_one/version.rb file"
	@exit 1
endif
ifeq ($(apiKey),)
	@echo "***\033[0;31mERROR:\033[0m NO apiKey WAS NOT PROVIDED."
	@exit 1
endif
	docker run \
		--rm \
		-v $(PWD):$(WORKING_DIR) \
		-w $(WORKING_DIR) \
		ruby:2.7 \
		/bin/bash -c \
			"mkdir -p $(GEM_CREDENTIALS_LOCATION) \
			 && echo -e '---\n:rubygems_api_key: $(apiKey)\n' > $(GEM_CREDENTIALS_FILE) \
			 && chmod 0600 $(GEM_CREDENTIALS_FILE) \
			 && gem push talon_one-$(VERSION).gem -k rubygems"

.PHONY: testenv
testenv:
	docker run \
		--rm -it \
		-v $(PWD):$(WORKING_DIR) \
		-w $(WORKING_DIR) \
		ruby:2.7 \
		/bin/bash -c "bundle install ; bash"

.PHONY: test
test:
	docker run \
		--rm -it \
		-v $(PWD):$(WORKING_DIR) \
		-w $(WORKING_DIR) \
		ruby:2.7 \
		/bin/bash -c "bundle install && chmod +x test.sh && IAPI_KEY=$(IAPI_KEY) MAPI_KEY=$(MAPI_KEY) ./test.sh"