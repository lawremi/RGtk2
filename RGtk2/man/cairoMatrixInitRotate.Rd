\alias{cairoMatrixInitRotate}
\name{cairoMatrixInitRotate}
\title{cairoMatrixInitRotate}
\description{Initialized \code{matrix} to a transformation that rotates by \code{radians}.}
\usage{cairoMatrixInitRotate(radians)}
\arguments{\item{\code{radians}}{[numeric]  angle of rotation, in radians. The direction of rotation
is defined such that positive angles rotate in the direction from
the positive X axis toward the positive Y axis. With the default
axis orientation of cairo, positive angles rotate in a clockwise
direction.}}
\value{
A list containing the following elements:
\item{\code{matrix}}{[\code{\link{CairoMatrix}}]  a cairo\_matrix\_t}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
