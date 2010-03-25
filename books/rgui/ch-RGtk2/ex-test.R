
library(RGtk2)

df <- data.frame(a=1:5, b=c(21.2, 1, 1.333, NA, NaN), c=c(1,50,75,25,10))

store <- rGtkDataFrame(df)
tv <- gtkTreeView(store)
vc <- gtkTreeViewColumn()
tv$insertColumn(vc, 0)
vc$setTitle("Column 1")

selection <- tv$getSelection()          # of view
selection$setMode("multiple")

## all is fine with column 0
cr <- gtkCellRendererText()
vc$packStart(cr)
vc$addAttribute(cr, "text", 0)


## sortable


## GUI
w <- gtkWindow(show=FALSE)
w$setSizeRequest(300,300)
w$setTitle("rGtk2DataFrame example")
sw <- gtkScrolledWindow()
sw$setPolicy("automatic", "automatic")
sw$add(tv)
w$add(sw)
w$showAll()
