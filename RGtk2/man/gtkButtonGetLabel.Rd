\alias{gtkButtonGetLabel}
\name{gtkButtonGetLabel}
\title{gtkButtonGetLabel}
\description{Fetches the text from the label of the button, as set by
\code{\link{gtkButtonSetLabel}}. If the label text has not 
been set the return value will be \code{NULL}. This will be the 
case if you create an empty button with \code{\link{gtkButtonNew}} to 
use as a container.}
\usage{gtkButtonGetLabel(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkButton}}]  a \verb{\link{GtkButton}}}}
\value{[character]  The text of the label widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
