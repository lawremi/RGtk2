\alias{pangoLayoutIterGetLayoutExtents}
\name{pangoLayoutIterGetLayoutExtents}
\title{pangoLayoutIterGetLayoutExtents}
\description{Obtains the extents of the \verb{\link{PangoLayout}} being iterated
over. \code{ink.rect} or \code{logical.rect} can be \code{NULL} if you
aren't interested in them.}
\usage{pangoLayoutIterGetLayoutExtents(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoLayoutIter}}]  a \verb{\link{PangoLayoutIter}}}}
\value{
A list containing the following elements:
\item{\verb{ink.rect}}{[\verb{\link{PangoRectangle}}]  rectangle to fill with ink extents, or \code{NULL}}
\item{\verb{logical.rect}}{[\verb{\link{PangoRectangle}}]  rectangle to fill with logical extents, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
