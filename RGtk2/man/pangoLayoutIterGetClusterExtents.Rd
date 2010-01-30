\alias{pangoLayoutIterGetClusterExtents}
\name{pangoLayoutIterGetClusterExtents}
\title{pangoLayoutIterGetClusterExtents}
\description{Gets the extents of the current cluster, in layout coordinates
(origin is the top left of the entire layout).}
\usage{pangoLayoutIterGetClusterExtents(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoLayoutIter}}]  a \verb{\link{PangoLayoutIter}}}}
\value{
A list containing the following elements:
\item{\verb{ink.rect}}{[\verb{\link{PangoRectangle}}]  rectangle to fill with ink extents, or \code{NULL}}
\item{\verb{logical.rect}}{[\verb{\link{PangoRectangle}}]  rectangle to fill with logical extents, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
