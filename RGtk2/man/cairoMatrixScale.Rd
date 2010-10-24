\alias{cairoMatrixScale}
\name{cairoMatrixScale}
\title{cairoMatrixScale}
\description{Applies scaling by \code{sx}, \code{sy} to the transformation in \code{matrix}. The
effect of the new transformation is to first scale the coordinates
by \code{sx} and \code{sy}, then apply the original transformation to the coordinates.}
\usage{cairoMatrixScale(matrix, sx, sy)}
\arguments{
\item{\verb{matrix}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
\item{\verb{sx}}{[numeric]  scale factor in the X direction}
\item{\verb{sy}}{[numeric]  scale factor in the Y direction}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
