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
\item{\code{result}}{[\code{\link{cairo_matrix_t}}]  a \code{cairo.matrix.t} in which to store the result}
\item{\code{a}}{[\code{\link{cairo_matrix_t}}]  a \code{cairo.matrix.t}}
\item{\code{b}}{[\code{\link{cairo_matrix_t}}]  a \code{cairo.matrix.t}}
}
\details{It is allowable for \code{result} to be identical to either \code{a} or \code{b}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
