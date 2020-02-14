
paper.pdf: clean paper.tex all.bib
	pdflatex --synctex=1 paper && bibtex paper

build: paper.pdf

pdf: paper.pdf

paper: paper.pdf

all: paper.pdf

clean:
	rm -rf *~ *.log *.aux *.bbl *.out *.blg *.synctex.gz

.PHONY: clean all build pdf paper
