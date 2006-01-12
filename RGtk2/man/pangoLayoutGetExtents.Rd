\alias{pangoLayoutGetExtents}
\name{pangoLayoutGetExtents}
\title{pangoLayoutGetExtents}
\description{Computes the logical and ink extents of \code{layout}. Logical extents
are usually what you want for positioning things. The extents
are given in layout coordinates; layout coordinates begin at the
top left corner of the layout.}
\usage{pangoLayoutGetExtents(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoLayout}}]    a \code{\link{PangoLayout}}}}
\value{
A list containing the following elements:
\item{\code{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the extents of the layout as drawn
           or \code{NULL} to indicate that the result is not needed.}
\item{\code{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the layout 
                 or \code{NULL} to indicate that the result is not needed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
