win <- gtkWindow()

vbox <- gtkVBox(FALSE, 5)
win$add(vbox)

homo <- gtkFrame("homogeneous=TRUE")
vbox$packStart(homo, FALSE, FALSE)

hetero <- gtkFrame("homogeneous=FALSE")
vbox$packStart(hetero, FALSE, FALSE)

vbox <- gtkVBox(FALSE, 5)
vbox$setBorderWidth(5)
homo$add(vbox)

hbox <- gtkHBox(TRUE, 5)
vbox$packStart(hbox, FALSE, FALSE)
hbox$packStart(gtkButton("fill=FALSE"), fill = FALSE)
hbox$packStart(gtkButton("fill=FALSE"), fill = FALSE)

hbox <- gtkHBox(TRUE, 5)
vbox$packStart(hbox, FALSE, FALSE)
hbox$packStart(gtkButton("fill=TRUE"), fill = TRUE)
hbox$packStart(gtkButton("fill=FALSE"), fill = FALSE)

hbox <- gtkHBox(TRUE, 5)
vbox$packStart(hbox, FALSE, FALSE)
hbox$packStart(gtkButton("fill=TRUE"), fill = TRUE)
hbox$packStart(gtkButton("fill=TRUE"), fill = TRUE)

vbox <- gtkVBox(FALSE, 5)
vbox$setBorderWidth(5)
hetero$add(vbox)

hbox <- gtkHBox(FALSE, 5)
vbox$packStart(hbox, FALSE, FALSE)
hbox$packStart(gtkButton("expand=TRUE, fill=FALSE"), TRUE, FALSE)
hbox$packStart(gtkButton("expand=TRUE, fill=FALSE"), TRUE, FALSE)

hbox <- gtkHBox(FALSE, 5)
vbox$packStart(hbox, FALSE, FALSE)
hbox$packStart(gtkButton("expand=FALSE, fill=FALSE"), FALSE, FALSE)
hbox$packStart(gtkButton("expand=FALSE, fill=FALSE"), FALSE, FALSE)

hbox <- gtkHBox(FALSE, 5)
vbox$packStart(hbox, FALSE, FALSE)
hbox$packStart(gtkButton("expand=TRUE, fill=FALSE"), TRUE, FALSE)
hbox$packStart(gtkButton("expand=FALSE, fill=FALSE"), FALSE, FALSE)

hbox <- gtkHBox(FALSE, 5)
vbox$packStart(hbox, FALSE, FALSE)
hbox$packStart(gtkButton("expand=TRUE, fill=TRUE"), TRUE, TRUE)
hbox$packStart(gtkButton("expand=FALSE, fill=FALSE"), FALSE, FALSE)

hbox <- gtkHBox(FALSE, 5)
vbox$packStart(hbox, FALSE, FALSE)
hbox$packStart(gtkButton("expand=TRUE, fill=TRUE"), TRUE, TRUE)
hbox$packStart(gtkButton("expand=TRUE, fill=FALSE"), TRUE, FALSE)

hbox <- gtkHBox(FALSE, 5)
vbox$packStart(hbox, FALSE, FALSE)
hbox$packStart(gtkButton("expand=TRUE, fill=TRUE"), TRUE, TRUE)
hbox$packStart(gtkButton("expand=TRUE, fill=TRUE"), TRUE, TRUE)

