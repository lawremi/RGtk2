## Makefile to run latex, Sweave or Stangle

all: sweave latex
	
sweave: 	
	R CMD Sweave ch-*.Rnw

stangle: 
	R CMD Stangle ch-*.Rnw

latex:  
	pdflatex print-chapter

package:
	rm -rf ../ProgGUIinR/inst/web/simpleapp
	rm -rf ../ProgGUIinR/inst/web/ajaxapp
	rm -rf ../ProgGUIinR/inst/web/brew/*brew
	cp -Ra tmp/simpleapp ../ProgGUIinR/inst/web/simpleapp
	cp -Ra tmp/ajaxapp ../ProgGUIinR/inst/web/ajaxapp
	cp tmp/test-ajax.html ../ProgGUIinR/inst/web/test-ajax.html
	cp *.brew ../ProgGUIinR/inst/web/brew/