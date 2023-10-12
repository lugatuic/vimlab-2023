vimlab.pdf: vimlab.tex
	pdflatex $^

clean:
	rm -f *.log *.pdf *.aux *.out *.nav *.snm *.toc

.PHONY: clean
