## header bindings


## select o single click
clearSelectedColumn <- function(view) {
  sapply(view$getColumns(), function(i) {
    i$setData("selected",FALSE)
    cr <- i$getCellRenderers()[[1]]
    cr['background'] <- NULL
  })
}
setSelectedColumn <- function(viewCol) {
  viewCol$setData("selected", TRUE)
  cr <- viewCol$getCellRenderers()[[1]]
    cr['background'] <- "red"
}
  
sapply(view$getColumns(), function(vc) {
  gSignalConnect(vc, "clicked", function(viewCol, data) {
    tv <- viewCol$getTreeView()
    clearSelectedColumn(tv)
    setSelectedColumn(viewCol)
  })
})
}

gSignalConnect(view, "button-press-event", f=function(view, e, data) {
  clearSelectedColumn(view)
  path <- view$getPathAtPos(e$getX(), e$getY())
  print(path$toString())

  return(FALSE)
})
