.PHONY: all clean

all: slides.pdf

slides.pdf: slides.tex markov.cls
	latexmk $< --auxdir=aux --emulate-aux-dir --pdf

clean:
	$(RM) aux/*
	$(RM) *.fls
	$(RM) *.pdf
