vimlab.pdf: vimlab.tex

vimlab.handout.pdf: vimlab.handout.tex

vimlab.handout.tex: vimlab.tex
	sed '1s/\documentclass{beamer}/\documentclass[handout]{beamer}/' $^ > $@

%.pdf: %.tex
	latexmk -pdf -use-make $^

all: vimlab.pdf vimlab.handout.pdf

clean:
	rm -f vim.handout.tex *.snm *.nav
	latexmk -CA

.PHONY: all clean
