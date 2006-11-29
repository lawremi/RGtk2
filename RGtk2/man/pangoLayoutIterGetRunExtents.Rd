\alias{pangoLayoutIterGetRunExtents}
\name{pangoLayoutIterGetRunExtents}
\title{pangoLayoutIterGetRunExtents}
\description{Gets the extents of the current run in layout coordinates
(origin is the top left of the entire layout).}
\usage{pangoLayoutIterGetRunExtents(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoLayoutIter}}]  a \code{\link{PangoLayoutIter}}}}
\value{
A list containing the following elements:
\item{\code{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle to fill with ink extents, or \code{NULL}}
\item{\code{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle to fill with logical extents, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
