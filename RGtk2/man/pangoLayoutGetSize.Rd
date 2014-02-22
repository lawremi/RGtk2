\alias{pangoLayoutGetSize}
\name{pangoLayoutGetSize}
\title{pangoLayoutGetSize}
\description{Determines the logical width and height of a \code{\link{PangoLayout}}
in Pango units (device units scaled by \code{PANGO_SCALE}). This
is simply a convenience function around \code{\link{pangoLayoutGetExtents}}.}
\usage{pangoLayoutGetSize(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\value{
A list containing the following elements:
\item{\verb{width}}{[integer]  location to store the logical width, or \code{NULL}}
\item{\verb{height}}{[integer]  location to store the logical height, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
