LATEX_FILES := ${wildcard *.tex *.sty *.cls *.bib}

latex: $(LATEX_FILES)
	mkdir -p build
	cp $(LATEX_FILES) build/
	cd build && pdflatex paper.tex
	cd build && bibtex paper

all: latex

clean:
	rm -rf build/

.PHONY: clean all
.DEFAULT_GOAL := all
