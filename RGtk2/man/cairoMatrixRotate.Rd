\alias{cairoMatrixRotate}
\name{cairoMatrixRotate}
\title{cairoMatrixRotate}
\description{Applies rotation by \code{radians} to the transformation in
\code{matrix}. The effect of the new transformation is to first rotate the
coordinates by \code{radians}, then apply the original transformation
to the coordinates.}
\usage{cairoMatrixRotate(matrix, radians)}
\arguments{
\item{\verb{matrix}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
\item{\verb{radians}}{[numeric]  angle of rotation, in radians. The direction of rotation
is defined such that positive angles rotate in the direction from
the positive X axis toward the positive Y axis. With the default
axis orientation of cairo, positive angles rotate in a clockwise
direction.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
