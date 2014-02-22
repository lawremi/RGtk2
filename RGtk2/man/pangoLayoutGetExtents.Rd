\alias{pangoLayoutGetExtents}
\name{pangoLayoutGetExtents}
\title{pangoLayoutGetExtents}
\description{Computes the logical and ink extents of \code{layout}. Logical extents
are usually what you want for positioning things.  Note that both extents
may have non-zero x and y.  You may want to use those to offset where you
render the layout.  Not doing that is a very typical bug that shows up as
right-to-left layouts not being correctly positioned in a layout with
a set width.}
\usage{pangoLayoutGetExtents(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]    a \code{\link{PangoLayout}}}}
\details{The extents are given in layout coordinates and in Pango units; layout
coordinates begin at the top left corner of the layout.  }
\value{
A list containing the following elements:
\item{\verb{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the extents of the layout as drawn
           or \code{NULL} to indicate that the result is not needed.}
\item{\verb{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the layout
		 or \code{NULL} to indicate that the result is not needed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
