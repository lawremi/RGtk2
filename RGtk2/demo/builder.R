
quit_activate <- function(action) { }

about_activate <- function(action)
{
  about_dlg <- gtkAboutDialog()
  about_dlg$setProgramName("GtkBuilder demo")
  about_dlg$run()
  about_dlg$destroy()
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
