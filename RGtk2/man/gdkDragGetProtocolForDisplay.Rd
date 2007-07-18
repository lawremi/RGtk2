\alias{gdkDragGetProtocolForDisplay}
\name{gdkDragGetProtocolForDisplay}
\title{gdkDragGetProtocolForDisplay}
\description{Finds out the DND protocol supported by a window.}
\usage{gdkDragGetProtocolForDisplay(display, xid)}
\arguments{
\item{\code{display}}{[\code{\link{GdkDisplay}}]  the \code{\link{GdkDisplay}} where the destination window resides}
\item{\code{xid}}{[numeric]  the X id of the destination window.}
}
\details{  Since  2.2}
\value{
A list containing the following elements:
\item{retval}{[numeric]  the X id of the window where the drop should happen. This 
    may be \code{xid} or the X id of a proxy window, or None if \code{xid} doesn't
    support Drag and Drop.}
\item{\code{protocol}}{[\code{\link{GdkDragProtocol}}]  location where the supported DND protocol is returned.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
