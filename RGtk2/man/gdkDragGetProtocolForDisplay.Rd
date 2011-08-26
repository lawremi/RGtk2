\alias{gdkDragGetProtocolForDisplay}
\name{gdkDragGetProtocolForDisplay}
\title{gdkDragGetProtocolForDisplay}
\description{Finds out the DND protocol supported by a window.}
\usage{gdkDragGetProtocolForDisplay(display, xid)}
\arguments{
\item{\verb{display}}{the \code{\link{GdkDisplay}} where the destination window resides}
\item{\verb{xid}}{the windowing system id of the destination window.}
}
\details{Since 2.2}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkNativeWindow}}] the windowing system id of the window where the drop should happen. This
may be \code{xid} or the id of a proxy window, or zero if \code{xid} doesn't
support Drag and Drop.}
\item{\verb{protocol}}{location where the supported DND protocol is returned.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
