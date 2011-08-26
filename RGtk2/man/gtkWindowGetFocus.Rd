\alias{gtkWindowGetFocus}
\name{gtkWindowGetFocus}
\title{gtkWindowGetFocus}
\description{Retrieves the current focused widget within the window.
Note that this is the widget that would have the focus
if the toplevel window focused; if the toplevel window
is not focused then  \code{gtk_widget_has_focus (widget)} will
not be \code{TRUE} for the widget.}
\usage{gtkWindowGetFocus(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\value{[\code{\link{GtkWidget}}] the currently focused widget, or \code{NULL} if there is none. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
