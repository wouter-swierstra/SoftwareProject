SRCS			= $(wildcard ??-slides.md)
PDFS			= $(patsubst %.md,%.pdf,$(SRCS))

default: $(PDFS)

#%.tex : %.md Makefile
#	( echo '\\documentclass{beamer}' && \
#	  echo '\\begin{document}' && \
#	  pandoc --to=beamer $< && \
#	  echo '\\end{document}' \
#	) > $@
#
%.tex : %.md Makefile
	pandoc -s --to=beamer $< > $@

%.pdf : %.tex
	latexmk -pdf $<
	
