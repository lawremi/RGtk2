## Makefile to run latex, Sweave or Stangle

all: sweave stangle latex
	
sweave: 	
	R64 CMD Sweave ch-*.Rnw

stangle: 
	R64 CMD Stangle ch-*.Rnw

latex:  
	pdflatex print-chapter

package:
	./makePackage.sh