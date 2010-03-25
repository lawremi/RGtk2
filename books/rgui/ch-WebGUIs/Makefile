## Makefile to run latex, Sweave or Stangle

all: sweave latex
	
sweave: 	
	R CMD Sweave ch-*.Rnw

stangle: 
	R CMD Stangle ch-*.Rnw

latex:  
	pdflatex print-chapter

package:
	rm -rf ../ProgGUIInR/inst/web/simpleapp
	rm -rf ../ProgGUIInR/inst/web/ajaxapp
	rm -rf ../ProgGUIInR/inst/web/brew/*brew
	cp -Ra tmp/simpleapp ../ProgGUIInR/inst/web/simpleapp
	cp -Ra tmp/ajaxapp ../ProgGUIInR/inst/web/ajaxapp
	cp tmp/test-ajax.html ../ProgGUIInR/inst/web/test-ajax.html
	cp *.brew ../ProgGUIInR/inst/web/brew/