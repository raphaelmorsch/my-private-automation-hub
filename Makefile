ANSIBLE_LOCAL_TEMP ?= /private/tmp/ansible-local
COLLECTION_ROOT := collections/ansible_collections/raphaelmorsch
DIST := dist
COLLECTIONS := linux_ops web_stack container_tools cloud_ops aap_platform

.PHONY: build clean sanity

build:
	mkdir -p $(ANSIBLE_LOCAL_TEMP) $(DIST)
	for collection in $(COLLECTIONS); do \
		ANSIBLE_LOCAL_TEMP=$(ANSIBLE_LOCAL_TEMP) ansible-galaxy collection build $(COLLECTION_ROOT)/$$collection --output-path $(DIST) --force; \
	done

sanity:
	ANSIBLE_LOCAL_TEMP=$(ANSIBLE_LOCAL_TEMP) ansible-galaxy collection list -p collections

clean:
	rm -rf $(DIST)

