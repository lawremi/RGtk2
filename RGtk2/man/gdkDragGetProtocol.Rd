\alias{gdkDragGetProtocol}
\name{gdkDragGetProtocol}
\title{gdkDragGetProtocol}
\description{Finds out the DND protocol supported by a window.}
\usage{gdkDragGetProtocol(xid)}
\arguments{\item{\code{xid}}{[numeric]  the X id of the destination window.}}
\value{
A list containing the following elements:
\item{retval}{[numeric]  the X id of the window where the drop should happen. This 
   may be \code{xid} or the X id of a proxy window, or None if \code{xid} doesn't
   support Drag and Drop.}
\item{\code{protocol}}{[\code{\link{GdkDragProtocol}}]  location where the supported DND protocol is returned.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
