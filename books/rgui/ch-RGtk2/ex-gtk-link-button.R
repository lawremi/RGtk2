library(RGtk2)

w <- gtkWindow()
g <- gtkVBox(); w$Add(g)
lb <- gtkLinkButton(uri="http://www.r-project.org")
lb1<- gtkLinkButton(uri="http://www.r-project.org",label="R Home")
g$PackStart(lb)
g$PackStart(lb1)

f <- function(w,...) browseURL(w['uri'])

gSignalConnect(lb,"clicked",f = f)
gSignalConnect(lb1,"clicked",f = f)
