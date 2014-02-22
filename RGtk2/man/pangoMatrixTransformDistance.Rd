\alias{pangoMatrixTransformDistance}
\name{pangoMatrixTransformDistance}
\title{pangoMatrixTransformDistance}
\description{Transforms the distance vector (\code{dx},\code{dy}) by \code{matrix}. This is
similar to \code{\link{pangoMatrixTransformPoint}} except that the translation
components of the transformation are ignored. The calculation of
the returned vector is as follows:}
\usage{pangoMatrixTransformDistance(object, dx, dy)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoMatrix}}]  a \code{\link{PangoMatrix}}, or \code{NULL}}
\item{\verb{dx}}{[numeric]  in/out X component of a distance vector}
\item{\verb{dy}}{[numeric]  yn/out Y component of a distance vector}
}
\details{\preformatted{dx2 = dx1 * xx + dy1 * xy;
dy2 = dx1 * yx + dy1 * yy;
}  
Affine transformations are position invariant, so the same vector
always transforms to the same vector. If (\code{x1},\code{y1}) transforms
to (\code{x2},\code{y2}) then (\code{x1}+\code{dx1},\code{y1}+\code{dy1}) will transform to
(\code{x1}+\code{dx2},\code{y1}+\code{dy2}) for all values of \code{x1} and \code{x2}.  
  Since 1.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
