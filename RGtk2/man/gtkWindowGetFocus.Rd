\alias{gtkWindowGetFocus}
\name{gtkWindowGetFocus}
\title{gtkWindowGetFocus}
\description{Retrieves the current focused widget within the window.
Note that this is the widget that would have the focus
if the toplevel window focused; if the toplevel window
is not focused then  \code{GTK_WIDGET_HAS_FOCUS (widget)} will
not be \code{TRUE} for the widget.}
\usage{gtkWindowGetFocus(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkWindow}}]  a \code{\link{GtkWindow}}}}
\value{[\code{\link{GtkWidget}}]  the currently focused widget, or \code{NULL} if there is none.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
