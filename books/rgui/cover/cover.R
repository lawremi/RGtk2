library(RGtk2)

about.cb <- function(action, window) {
  filename <- imagefile("rgtk-logo.gif")
  if (file.exists(filename)) {
    pixbuf <- gdkPixbufNewFromFile(filename)[[1]]
    ## make white space transparent
    transparent <- pixbuf$addAlpha(TRUE, 253, 253, 253)
  }
  
  gtkShowAboutDialog(window, program_name="Programming GUI's in R",
                     version="1.0",
                     copyright="(C) M. Lawrence and J. Verzani",
                     license="GPL (>= 2)", # license of the R package
                     website="http://", # what is our website?
                     comments=paste("A practical guide to building a GUI in R,",
                       "with examples"),
                     authors=c("Michael F. Lawrence <michafla@gene.com>",
                     "John Verzani <>"), documenters="See authors",
                     logo=transparent)
}
open.cb <- function(action, window) { }

window <- gtkWindowNew("toplevel", show=FALSE)
window$setDefaultSize(200, 200)
window$setTitle("Programming GUI's in R")

agroup <- gtkActionGroupNew("AppWindowActions")
entries <- list(
                list("FileMenu", NULL, "_File"),
                list("HelpMenu", NULL, "_Help"),
                list("Open", NULL, "_Open", "<control>O", "Open", open.cb),
                list("About", NULL, "_About", "<control>A", "About", about.cb)
                )
agroup$addActions(entries, window)

manager <- gtkUIManagerNew()
manager$insertActionGroup(agroup, 0)

uistr <- paste(
               "<ui>",
               "  <menubar name='MenuBar'>",
               "    <menu action='FileMenu'>",
               "      <menuitem action='Open'/>",
               "    </menu>",
               "    <menu action='HelpMenu'>",
               "      <menuitem action='About'/>",
               "    </menu>",
               "  </menubar>",
               "</ui>", sep="\n")

manager$addUiFromString(uistr)
menubar <- manager$getWidget("/MenuBar")
menubar$show()

vbox <- gtkVBox()
window$add(vbox)
vbox$packStart(menubar, expand=FALSE)

chapters <- list(Preface = NULL,
                 Fundamentals = c("A simple GUI in R", "GUI Design Principles",
                   "Controls", "Containers"),
                 "Introduction to gWidgets" = "dummy",
                 "gWidgets: Overview" = "dummy",
                 "gWidgets: Container Widgets" = "dummy",
                 "gWidgets: Control Widgets" = "dummy",
                 "gWidgets: R-specific Widgets" = "dummy",
                 "RGtk2: Overview" = "dummy",
                 "RGtk2: Windows, Containers and Dialogs" = "dummy",
                 "RGtk2: Basic Components" = "dummy",
                 "RGtk2: Widgets Using Data Models" = "dummy",
                 "RGtk2: Application Windows" = "dummy",
                 "Qt: Overview" = "dummy",
                 "Qt: Layout Managers and Containers" = "dummy",
                 "Qt: Widgets" = "dummy",
                 "Qt: Widgets Using Data Models" = "dummy",
                 "Qt: Application Windows" = "dummy",
                 "Tcl/Tk: Overview" = "dummy",
                 "Tcl/Tk: Layout and Containers" = "dummy",
                 "Tcl/Tk: Widgets" = "dummy"
                 )

tstore <- gtkTreeStore("gchararray")
lapply(names(chapters), function(chapterName) {
  piter <- tstore$append()              # parent
  tstore$setValue(piter$iter, column = 0, value = chapterName)
  sapply(chapters[[chapterName]], function(model) {
    sibiter <- tstore$append(parent = piter$iter) # child
    if (is.null(sibiter$retval)) 
      tstore$setValue(sibiter$iter, column = 0, value = model)
  })
})

view <- gtkTreeView()
view$insertColumnWithAttributes(0, "Section", gtkCellRendererText(), text = 0)
view$setHeadersVisible(FALSE)
view$setModel(tstore)

scrolledWin <- gtkScrolledWindow()
scrolledWin$add(view)
vbox$packStart(scrolledWin)

window$show()
