TEX = pdflatex -interaction nonstopmode
BIB = bibtex

PAPER = main

all: $(PAPER).pdf

clean::
	rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof *.gz $(PAPER).pdf $(PAPER)_compress.pdf

$(PAPER).pdf: $(PAPER).tex $(PAPER).bib
	$(TEX) $(PAPER)
	$(BIB) $(PAPER)
	$(TEX) $(PAPER)
	$(TEX) $(PAPER)
	gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/prepress -dCompatibilityLevel=1.4 -sOutputFile=$(PAPER)_compress.pdf $(PAPER).pdf