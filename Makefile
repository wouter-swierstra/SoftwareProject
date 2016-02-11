SRCS			= $(wildcard ??-slides.md)
PDFS			= $(patsubst %.md,%.pdf,$(SRCS))

default: $(PDFS)

%.tex : %.md Makefile
	pandoc -s --template=sp.beamer -V theme=Boadilla --to=beamer $< > $@

%.pdf : %.tex Makefile
	latexmk -pdf $<
	
