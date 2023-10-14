vimlab.pdf: vimlab.tex

vimlab.handout.pdf: vimlab.handout.tex

vimlab.handout.tex: vimlab.tex
	sed '1s/\documentclass{beamer}/\documentclass[handout]{beamer}/' $^ > $@

%.pdf: %.tex
	latexmk -pdf -shell-escape -use-make $^

all: vimlab.pdf vimlab.handout.pdf

clean:
	latexmk -CA
	rm -f vimlab.handout.tex *.snm *.nav *.vrb *.pyg
	rm -rf _minted-*/ svg-inkscape/

.PHONY: all clean
