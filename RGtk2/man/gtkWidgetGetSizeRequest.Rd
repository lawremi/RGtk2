\alias{gtkWidgetGetSizeRequest}
\name{gtkWidgetGetSizeRequest}
\title{gtkWidgetGetSizeRequest}
\description{Gets the size request that was explicitly set for the widget using
\code{\link{gtkWidgetSetSizeRequest}}. A value of -1 stored in \code{width} or
\code{height} indicates that that dimension has not been set explicitly
and the natural requisition of the widget will be used intead. See
\code{\link{gtkWidgetSetSizeRequest}}. To get the size a widget will
actually use, call \code{\link{gtkWidgetSizeRequest}} instead of
this function.}
\usage{gtkWidgetGetSizeRequest(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\value{
A list containing the following elements:
\item{\verb{width}}{(out): return location for width, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{height}}{(out): return location for height, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
