\alias{gtkWindowSetTransientFor}
\name{gtkWindowSetTransientFor}
\title{gtkWindowSetTransientFor}
\description{Dialog windows should be set transient for the main application
window they were spawned from. This allows window managers to e.g. keep the
dialog on top of the main window, or center the dialog over the
main window. \code{\link{gtkDialogNewWithButtons}} and other convenience
functions in GTK+ will sometimes call
\code{\link{gtkWindowSetTransientFor}} on your behalf.}
\usage{gtkWindowSetTransientFor(object, parent = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWindow}}]  a \code{\link{GtkWindow}}}
\item{\code{parent}}{[\code{\link{GtkWindow}}]  parent window}
}
\details{On Windows, this function puts the child window on top of the parent, 
much as the window manager would have done on X.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
