\alias{pangoLayoutIterGetLineExtents}
\name{pangoLayoutIterGetLineExtents}
\title{pangoLayoutIterGetLineExtents}
\description{Obtains the extents of the current line. \code{ink.rect} or \code{logical.rect}
can be NULL if you aren't interested in them. Extents are in layout
coordinates (origin is the top-left corner of the entire
\code{\link{PangoLayout}}).  Thus the extents returned by this function will be
the same width/height but not at the same x/y as the extents
returned from \code{\link{pangoLayoutLineGetExtents}}.}
\usage{pangoLayoutIterGetLineExtents(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoLayoutIter}}]  a \code{\link{PangoLayoutIter}}}}
\value{
A list containing the following elements:
\item{\code{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle to fill with ink extents}
\item{\code{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle to fill with logical extents}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
