\alias{cairoMatrixScale}
\name{cairoMatrixScale}
\title{cairoMatrixScale}
\description{Applies scaling by \code{tx}, \code{ty} to the transformation in \code{matrix}. The
effect of the new transformation is to first scale the coordinates
by \code{sx} and \code{sy}, then apply the original transformation to the coordinates.}
\usage{cairoMatrixScale(matrix, sx, sy)}
\arguments{
\item{\code{matrix}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
\item{\code{sx}}{[numeric]  scale factor in the X direction}
\item{\code{sy}}{[numeric]  scale factor in the Y direction}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
