
COMPONENT = node_modules/.bin/component


build: components index.js template.js
	@$(COMPONENT) build --dev

template.js: template.html
	@$(COMPONENT) convert $<

components: component.json
	@$(COMPONENT) install --dev

test:
	@open test/index.html

clean:
	rm -fr build components template.js node_modules


.PHONY: test clean

