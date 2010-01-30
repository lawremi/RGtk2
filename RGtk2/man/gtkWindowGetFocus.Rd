\alias{gtkWindowGetFocus}
\name{gtkWindowGetFocus}
\title{gtkWindowGetFocus}
\description{Retrieves the current focused widget within the window.
Note that this is the widget that would have the focus
if the toplevel window focused; if the toplevel window
is not focused then  \code{GTK_WIDGET_HAS_FOCUS (widget)} will
not be \code{TRUE} for the widget.}
\usage{gtkWindowGetFocus(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWindow}}]  a \verb{\link{GtkWindow}}}}
\value{[\verb{\link{GtkWidget}}]  the currently focused widget, or \code{NULL} if there is none.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
