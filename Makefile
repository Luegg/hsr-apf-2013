#
# Makefile for HSR-LateX-Template
#

BASENAME = patterns
MAIN_TEX = $(BASENAME).tex
BULD_CMD = ./bin/latexmk.pl -pdflatex=lualatex -pdf $(MAIN_TEX)

# Don't ask me why.
all: build

build:
	@@$(BULD_CMD)

live:
	@@$(BULD_CMD) --pvc

clean-auxilary:
	-rm $(BASENAME).aux $(BASENAME).glo $(BASENAME).idx $(BASENAME).ist
	-rm $(BASENAME).lof $(BASENAME).out $(BASENAME).toc
	-rm $(BASENAME).glg $(BASENAME).gls *.log $(BASENAME).bbl
	-rm $(BASENAME).blg $(BASENAME).fdb_latexmk $(BASENAME).fls $(BASENAME).ilg
	-rm $(BASENAME).ind $(BASENAME).ind $(BASENAME).ilg $(BASENAME).fls $(BASENAME).lol

clean: clean-auxilary
	-rm $(BASENAME).pdf
