\alias{pangoExtentsToPixels}
\name{pangoExtentsToPixels}
\title{pangoExtentsToPixels}
\description{Converts extents from Pango units to device units, dividing by the
\code{PANGO_SCALE} factor and performing rounding.}
\usage{pangoExtentsToPixels(ink.rect, logical.rect)}
\arguments{
\item{\code{ink.rect}}{[\code{\link{PangoRectangle}}]  ink rectangle to convert, or \code{NULL}.}
\item{\code{logical.rect}}{[\code{\link{PangoRectangle}}]  logical rectangle to convert, or \code{NULL}.}
}
\details{The ink rectangle is converted by flooring the x/y coordinates and extending
width/height, such that the final rectangle completely includes the original
rectangle.
  
The logical rectangle is converted by rounding the coordinates
of the rectangle to the nearest device unit.
  
Note that in certain situations you may want pass a logical extents
rectangle to this function as \code{ink.rect}.  The rule is: if you want the
resulting device-space rectangle to completely contain the original
rectangle, pass it in as \code{ink.rect}.  

  Since  1.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
