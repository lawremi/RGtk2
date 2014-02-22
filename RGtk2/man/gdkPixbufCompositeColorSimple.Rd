\alias{gdkPixbufCompositeColorSimple}
\name{gdkPixbufCompositeColorSimple}
\title{gdkPixbufCompositeColorSimple}
\description{Creates a new \code{\link{GdkPixbuf}} by scaling \code{src} to \code{dest.width} x
\code{dest.height} and compositing the result with a checkboard of colors
\code{color1} and \code{color2}.}
\usage{gdkPixbufCompositeColorSimple(object, dest.width, dest.height, 
    interp.type, overall.alpha, check.size, color1, color2)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}}
\item{\verb{dest.width}}{the width of destination image}
\item{\verb{dest.height}}{the height of destination image}
\item{\verb{interp.type}}{the interpolation type for the transformation.}
\item{\verb{overall.alpha}}{overall alpha for source image (0..255)}
\item{\verb{check.size}}{the size of checks in the checkboard (must be a power of two)}
\item{\verb{color1}}{the color of check at upper left}
\item{\verb{color2}}{the color of the other check}
}
\value{[\code{\link{GdkPixbuf}}] the new \code{\link{GdkPixbuf}}, or \code{NULL} if not enough memory could be
allocated for it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
