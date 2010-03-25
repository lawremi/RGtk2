model <- rGtkDataFrame(mtcars)

tv <- gtkTreeView(model)
vc <- gtkTreeViewColumn()
tv$InsertColumn(vc, 0)
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)


vc$setWidget(gtkLabel("click me"))
vc$setData("header",  vc['widget']$getParent()$getParent()$getParent())

gSignalConnect(tv, "realize", f=function(w,data) {
  w$setHeadersClickable(TRUE)
})
gSignalConnect(vc$getData("header"), "clicked", f=function(b,data) {
  print("hi")
})

w <- gtkWindow(show=FALSE)
w$add(tv)
w$show()
