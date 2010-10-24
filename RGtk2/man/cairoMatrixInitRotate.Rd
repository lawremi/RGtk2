\alias{cairoMatrixInitRotate}
\name{cairoMatrixInitRotate}
\title{cairoMatrixInitRotate}
\description{Initialized \code{matrix} to a transformation that rotates by \code{radians}.}
\usage{cairoMatrixInitRotate(radians)}
\arguments{\item{\verb{radians}}{[numeric]  angle of rotation, in radians. The direction of rotation
is defined such that positive angles rotate in the direction from
the positive X axis toward the positive Y axis. With the default
axis orientation of cairo, positive angles rotate in a clockwise
direction.}}
\value{
A list containing the following elements:
\item{\verb{matrix}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
