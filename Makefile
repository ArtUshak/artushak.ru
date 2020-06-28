SASSC ?= sassc
SASSCFLAGS = -t compressed
SASS_FILES = static/styles/style.sass
CSS_FILES = $(patsubst %.sass,%.css,$(SASS_FILES))

.PHONY: clean

build: $(CSS_FILES)

clean:
	$(RM) $(CSS_FILES)

%.css: %.sass
	$(SASSC) $(SASSCFLAGS) $< $@
