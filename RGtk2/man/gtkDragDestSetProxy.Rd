\alias{gtkDragDestSetProxy}
\name{gtkDragDestSetProxy}
\title{gtkDragDestSetProxy}
\description{Sets this widget as a proxy for drops to another window.}
\usage{gtkDragDestSetProxy(object, proxy.window, protocol, use.coordinates)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{proxy.window}}{the window to which to forward drag events}
\item{\verb{protocol}}{the drag protocol which the \code{proxy.window} accepts
(You can use \code{\link{gdkDragGetProtocol}} to determine this)}
\item{\verb{use.coordinates}}{If \code{TRUE}, send the same coordinates to the
destination, because it is an embedded
subwindow.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
