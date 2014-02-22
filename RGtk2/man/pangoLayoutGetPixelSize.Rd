\alias{pangoLayoutGetPixelSize}
\name{pangoLayoutGetPixelSize}
\title{pangoLayoutGetPixelSize}
\description{Determines the logical width and height of a \code{\link{PangoLayout}}
in device units. (\code{\link{pangoLayoutGetSize}} returns the width
and height scaled by \code{PANGO_SCALE}.) This
is simply a convenience function around
\code{\link{pangoLayoutGetPixelExtents}}.}
\usage{pangoLayoutGetPixelSize(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\value{
A list containing the following elements:
\item{\verb{width}}{[integer]  location to store the logical width, or \code{NULL}}
\item{\verb{height}}{[integer]  location to store the logical height, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
