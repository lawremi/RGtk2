\alias{pangoLayoutGetPixelExtents}
\name{pangoLayoutGetPixelExtents}
\title{pangoLayoutGetPixelExtents}
\description{Computes the logical and ink extents of \code{layout} in device units.
See \code{\link{pangoLayoutGetExtents}}; this function just calls
\code{\link{pangoLayoutGetExtents}} and then converts the extents to
device units using the \code{PANGO_SCALE} factor.}
\usage{pangoLayoutGetPixelExtents(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoLayout}}]    a \code{\link{PangoLayout}}}}
\value{
A list containing the following elements:
\item{\code{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the extents of the layout as drawn
           or \code{NULL} to indicate that the result is not needed.}
\item{\code{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the 
             layout or \code{NULL} to indicate that the result is not needed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
