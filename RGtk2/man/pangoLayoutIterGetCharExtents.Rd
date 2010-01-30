\alias{pangoLayoutIterGetCharExtents}
\name{pangoLayoutIterGetCharExtents}
\title{pangoLayoutIterGetCharExtents}
\description{Gets the extents of the current character, in layout coordinates
(origin is the top left of the entire layout). Only logical extents
can sensibly be obtained for characters; ink extents make sense only
down to the level of clusters.}
\usage{pangoLayoutIterGetCharExtents(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoLayoutIter}}]  a \verb{\link{PangoLayoutIter}}}}
\value{
A list containing the following elements:
\item{\verb{logical.rect}}{[\verb{\link{PangoRectangle}}]  rectangle to fill with logical extents}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
