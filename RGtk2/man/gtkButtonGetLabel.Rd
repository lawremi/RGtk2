\alias{gtkButtonGetLabel}
\name{gtkButtonGetLabel}
\title{gtkButtonGetLabel}
\description{Fetches the text from the label of the button, as set by
\code{\link{gtkButtonSetLabel}}. If the label text has not 
been set the return value will be \code{NULL}. This will be the 
case if you create an empty button with \code{\link{gtkButtonNew}} to 
use as a container.}
\usage{gtkButtonGetLabel(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkButton}}}}
\value{[character] The text of the label widget. This string is owned
by the widget and must not be modified or freed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
