\alias{pangoMatrixTransformRectangle}
\name{pangoMatrixTransformRectangle}
\title{pangoMatrixTransformRectangle}
\description{First transforms \code{rect} using \code{matrix}, then calculates the bounding box
of the transformed rectangle.  The rectangle should be in Pango units.}
\usage{pangoMatrixTransformRectangle(object, rect)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoMatrix}}]  a \code{\link{PangoMatrix}}, or \code{NULL}}
\item{\verb{rect}}{[\code{\link{PangoRectangle}}]  in/out bounding box in Pango units, or \code{NULL}}
}
\details{This function is useful for example when you want to draw a rotated
\code{PangoLayout} to an image buffer, and want to know how large the image
should be and how much you should shift the layout when rendering.
  
If you have a rectangle in device units (pixels), use
\code{\link{pangoMatrixTransformPixelRectangle}}.
  
If you have the rectangle in Pango units and want to convert to
transformed pixel bounding box, it is more accurate to transform it first
(using this function) and pass the result to \code{\link{pangoExtentsToPixels}},
first argument, for an inclusive rounded rectangle.
However, there are valid reasons that you may want to convert
to pixels first and then transform, for example when the transformed
coordinates may overflow in Pango units (large matrix translation for
example).  
  Since 1.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
