## Makefile to run latex, Sweave or Stangle

all: sweave latex
	
sweave: 	
	R64 CMD Sweave ch-*.Rnw

stangle: 
	R64 CMD Stangle ch-*.Rnw

latex:  
	pdflatex --interaction scrollmode print-chapter
	bibtex print-chapter.fb
	makeindex print-chapter.idx
	pdflatex  --interaction scrollmode print-chapter

package:
	cp *.R ../ProgGUIinR/inst/Examples/ch-Qt
