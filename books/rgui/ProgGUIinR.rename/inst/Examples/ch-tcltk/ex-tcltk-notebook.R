library(tcltk)
w <- tktoplevel()
nb <- ttknotebook(w); tkpack(nb, expand=TRUE, fill="both")

iconFile <- system.file("images",paste("cancel","gif",sep="."), package="gWidgets")
iconName <- "::tcl::cancelIcon"
tkimage.create("photo", iconName, file = iconFile)



l1 <- ttklabel(nb, text="label 1", underline=0)
l2 <- ttklabel(nb, text="label 2")

tcl(nb, "add", l1, sticky="nswe", text="label 1", image=iconName, compound="right", underline=0)
tcl(nb, "insert", 0, l2, sticky="nswe", text="label 2", underline=1)

tkbind(nb, "<Button-1>", function(W,x,y) {
  print(tcl(nb,"index",paste("@",x,",",y,sep="")))
})

tcl("ttk::notebook::enableTraversal", nb)
