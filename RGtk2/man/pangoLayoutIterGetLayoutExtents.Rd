\alias{pangoLayoutIterGetLayoutExtents}
\name{pangoLayoutIterGetLayoutExtents}
\title{pangoLayoutIterGetLayoutExtents}
\description{Obtains the extents of the \code{\link{PangoLayout}} being iterated
over. \code{ink.rect} or \code{logical.rect} can be NULL if you
aren't interested in them.}
\usage{pangoLayoutIterGetLayoutExtents(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoLayoutIter}}]  a \code{\link{PangoLayoutIter}}}}
\value{
A list containing the following elements:
\item{\code{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle to fill with ink extents}
\item{\code{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle to fill with logical extents}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
