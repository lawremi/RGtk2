\alias{pangoLayoutIterGetClusterExtents}
\name{pangoLayoutIterGetClusterExtents}
\title{pangoLayoutIterGetClusterExtents}
\description{Gets the extents of the current cluster, in layout coordinates
(origin is the top left of the entire layout).}
\usage{pangoLayoutIterGetClusterExtents(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoLayoutIter}}]  a \code{\link{PangoLayoutIter}}}}
\value{
A list containing the following elements:
\item{\code{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle to fill with ink extents}
\item{\code{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle to fill with logical extents}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
