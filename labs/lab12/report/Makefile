FILES = $(patsubst %.md, %.docx, $(wildcard *.md))
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))

FILTERS =
OPTIONS =
PDF_ENGINE =
PDF_OPTIONS =
FORMAT_OPTIONS =

PDF_ENGINE += --pdf-engine=lualatex --pdf-engine-opt=--shell-escape
OPTIONS += --number-sections


%.docx: %.md
	-pandoc "$<" $(OPTIONS) -o "$@"

%.pdf: %.md
	-pandoc "$<" $(PDF_ENGINE) $(PDF_OPTIONS) $(FORMAT_OPTIONS) $(OPTIONS) -o "$@"

all: $(FILES)


clean:
	-rm $(FILES) *~

cleanall: clean
