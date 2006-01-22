# source("/home/larman/research/RGtk/inst/demo/dnd.R")
view.onDragDataReceived <- function(wgt, context, x, y, seldata, info, time, userdata)
{
  checkPtrType(userdata, "GtkTreeModel")
  model <- userdata

  iter <- model$append()$iter

  # the selection data is delivered to R as a list of integers
  # we need to turn this into a character vector, treating the integers
  # as raw bytes, so we coerce to raw and use the conversion function
  # this string would like gibberish in UTF-8 domains, but GTK probably
  # handles it correctly via Pango.
  
  strdata <- seldata[["data"]]
  mode(strdata) <- "raw"
  
  model$set(iter, 0, rawToChar(strdata))
}

TARGET <- c(string = 0, url = 1)
targetentries <- 
	list(
      c("STRING", 0, TARGET[["string"]]),
      c("text/plain", 0, TARGET[["string"]]),
      c("text/uri-list", 0, TARGET[["url"]])
    )
	
create.view.and.model <- function()
{
  liststore <- gtkListStoreNew("gchararray")

  view <- gtkTreeViewNewWithModel(liststore)

  col <- gtkTreeViewColumnNew()
  renderer <- gtkCellRendererTextNew()

  col$setTitle("URI")
  view$appendColumn(col)
  col$packStart(renderer, TRUE)
  col$addAttribute(renderer, "text", 0)

  view$getSelection()$setMode("single")

  # Make tree view a destination for Drag'n'Drop
    

    gtkDragDestSet(view, "all", targetentries, c("copy", "move", "link"))

    connectSignal(view, "drag_data_received", view.onDragDataReceived, liststore)

  return(view)
}

  window <- gtkWindowNew("toplevel", show = F)
  window$setDefaultSize(400, 200)

  vbox <- gtkVBoxNew(FALSE, 0)
  window$add(vbox)

  label <- gtkLabelNew("\nDrag and drop links from your browser into the tree view.\n")
  vbox$packStart(label, FALSE, FALSE, 0)

  view <- create.view.and.model()
  vbox$packStart(view, TRUE, TRUE, 0)

  window$showAll()
