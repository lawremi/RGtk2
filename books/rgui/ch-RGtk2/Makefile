## Makefile to run latex, Sweave or Stangle

all: sweave stangle latex
	
sweave: 	
	R CMD Sweave ch-*.Rnw

stangle: 
	R CMD Stangle ch-*.Rnw

latex:  
	pdflatex print-chapter

package:
	./makePackage.sh