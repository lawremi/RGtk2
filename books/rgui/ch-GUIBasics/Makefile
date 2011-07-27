## Makefile to run latex, Sweave or Stangle

all: sweave latex

sweave: 	
	R CMD Sweave ch-*.Rnw

stangle: 
	R CMD Stangle ch-*.Rnw

latex:  
	pdflatex --interaction scrollmode print-chapter
	bibtex print-chapter.fb
	makeindex print-chapter.idx
	pdflatex print-chapter

package:
	R CMD Stangle TicTacToe.Rnw
	cp TicTacToe.R ../ProgGUIInR/inst/Examples/