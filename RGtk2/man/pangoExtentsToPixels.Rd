\alias{pangoExtentsToPixels}
\name{pangoExtentsToPixels}
\title{pangoExtentsToPixels}
\description{Converts extents from Pango units to device units, dividing by the
\code{PANGO_SCALE} factor and performing rounding.}
\usage{pangoExtentsToPixels(inclusive, nearest)}
\arguments{
\item{\verb{inclusive}}{[\code{\link{PangoRectangle}}]  rectangle to round to pixels inclusively, or \code{NULL}.}
\item{\verb{nearest}}{[\code{\link{PangoRectangle}}]  rectangle to round to nearest pixels, or \code{NULL}.}
}
\details{The \code{inclusive} rectangle is converted by flooring the x/y coordinates and extending
width/height, such that the final rectangle completely includes the original
rectangle.
  
The \code{nearest} rectangle is converted by rounding the coordinates
of the rectangle to the nearest device unit (pixel).
  
The rule to which argument to use is: if you want the resulting device-space
rectangle to completely contain the original rectangle, pass it in as \code{inclusive}.
If you want two touching-but-not-overlapping rectangles stay
touching-but-not-overlapping after rounding to device units, pass them in
as \code{nearest}.  
  Since 1.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
