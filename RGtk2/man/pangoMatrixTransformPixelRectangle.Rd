\alias{pangoMatrixTransformPixelRectangle}
\name{pangoMatrixTransformPixelRectangle}
\title{pangoMatrixTransformPixelRectangle}
\description{First transforms the \code{rect} using \code{matrix}, then calculates the bounding box
of the transformed rectangle.  The rectangle should be in device units
(pixels).}
\usage{pangoMatrixTransformPixelRectangle(object, rect)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoMatrix}}]  a \code{\link{PangoMatrix}}, or \code{NULL}}
\item{\verb{rect}}{[\code{\link{PangoRectangle}}]  in/out bounding box in device units, or \code{NULL}}
}
\details{This function is useful for example when you want to draw a rotated
\code{PangoLayout} to an image buffer, and want to know how large the image
should be and how much you should shift the layout when rendering.
  
For better accuracy, you should use \code{\link{pangoMatrixTransformRectangle}} on
original rectangle in Pango units and convert to pixels afterward
using \code{\link{pangoExtentsToPixels}}'s first argument.  
  Since 1.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
