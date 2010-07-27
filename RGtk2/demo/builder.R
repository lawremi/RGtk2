
quit_activate <- function(action) {
  builder$getObject("window1")$destroy()
}

about_activate <- function(action)
{
  about_dlg <- builder$getObject("aboutdialog1")
  about_dlg$run()
  about_dlg$hide()
}

## GtkBuilder can't find any types, so we init them here
## Something to do with the dynamic linking
gtkListStoreGetType()
gtkUIManagerGetType()
gtkActionGroupGetType()
gtkWindowGetType()
gtkVBoxGetType()
gtkMenuBarGetType()
gtkScrolledWindowGetType()
gtkTreeViewGetType()
gtkCellRendererTextGetType()
gtkStatusbarGetType()
##

builder <- gtkBuilder()
filename <- system.file("ui", "demo.ui", package = "RGtk2")
res <- builder$addFromFile(filename)
if (!is.null(res$error))
  stop("ERROR: ", error$message)
builder$connectSignals(NULL)
window <- builder$getObject("window1")

window$showAll()
