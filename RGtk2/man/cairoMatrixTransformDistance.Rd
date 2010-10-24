\alias{cairoMatrixTransformDistance}
\name{cairoMatrixTransformDistance}
\title{cairoMatrixTransformDistance}
\description{Transforms the distance vector (\code{dx},\code{dy}) by \code{matrix}. This is
similar to \code{\link{cairoMatrixTransformPoint}} except that the translation
components of the transformation are ignored. The calculation of
the returned vector is as follows:}
\usage{cairoMatrixTransformDistance(matrix, dx, dy)}
\arguments{
\item{\verb{matrix}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}}}
\item{\verb{dx}}{[numeric]  X component of a distance vector. An in/out parameter}
\item{\verb{dy}}{[numeric]  Y component of a distance vector. An in/out parameter}
}
\details{\preformatted{dx2 = dx1 * a + dy1 * c;
dy2 = dx1 * b + dy1 * d;
}  
Affine transformations are position invariant, so the same vector
always transforms to the same vector. If (\code{x1},\code{y1}) transforms
to (\code{x2},\code{y2}) then (\code{x1}+\code{dx1},\code{y1}+\code{dy1}) will transform to
(\code{x1}+\code{dx2},\code{y1}+\code{dy2}) for all values of \code{x1} and \code{x2}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
