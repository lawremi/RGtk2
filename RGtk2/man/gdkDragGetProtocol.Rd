\alias{gdkDragGetProtocol}
\name{gdkDragGetProtocol}
\title{gdkDragGetProtocol}
\description{Finds out the DND protocol supported by a window.}
\usage{gdkDragGetProtocol(xid)}
\arguments{\item{\verb{xid}}{the windowing system id of the destination window.}}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkNativeWindow}}] the windowing system specific id for the window where
the drop should happen. This may be \code{xid} or the id of a proxy
window, or zero if \code{xid} doesn't support Drag and Drop.}
\item{\verb{protocol}}{location where the supported DND protocol is returned.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
