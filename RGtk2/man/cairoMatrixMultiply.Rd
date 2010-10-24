\alias{cairoMatrixMultiply}
\name{cairoMatrixMultiply}
\title{cairoMatrixMultiply}
\description{Multiplies the affine transformations in \code{a} and \code{b} together
and stores the result in \code{result}. The effect of the resulting
transformation is to first apply the transformation in \code{a} to the
coordinates and then apply the transformation in \code{b} to the
coordinates.}
\usage{cairoMatrixMultiply(result, a, b)}
\arguments{
\item{\verb{result}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}} in which to store the result}
\item{\verb{a}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
\item{\verb{b}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
}
\details{It is allowable for \code{result} to be identical to either \code{a} or \code{b}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
