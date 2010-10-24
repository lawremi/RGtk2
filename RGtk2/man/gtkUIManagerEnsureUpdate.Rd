\alias{gtkUIManagerEnsureUpdate}
\name{gtkUIManagerEnsureUpdate}
\title{gtkUIManagerEnsureUpdate}
\description{Makes sure that all pending updates to the UI have been completed.}
\usage{gtkUIManagerEnsureUpdate(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkUIManager}}}}
\details{This may occasionally be necessary, since \code{\link{GtkUIManager}} updates the 
UI in an idle function. A typical example where this function is
useful is to enforce that the menubar and toolbar have been added to 
the main window before showing it:
\preformatted{
window$add(vbox, show = F)
gSignalConnect(merge, "add_widget", add_widget, vbox)
merge$addUiFromFile("my-menus")
merge$addUiFromFile("my-toolbars")
merge$ensureUpdate() 
window$showAll()

}
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
