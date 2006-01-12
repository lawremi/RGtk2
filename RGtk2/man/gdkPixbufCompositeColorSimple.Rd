\alias{gdkPixbufCompositeColorSimple}
\name{gdkPixbufCompositeColorSimple}
\title{gdkPixbufCompositeColorSimple}
\description{Creates a new \code{\link{GdkPixbuf}} by scaling \code{src} to \code{dest.width} x
\code{dest.height} and compositing the result with a checkboard of colors
\code{color1} and \code{color2}.}
\usage{gdkPixbufCompositeColorSimple(object, dest.width, dest.height, interp.type, overall.alpha, check.size, color1, color2)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}}
\item{\code{dest.width}}{[integer]  the width of destination image}
\item{\code{dest.height}}{[integer]  the height of destination image}
\item{\code{interp.type}}{[\code{\link{GdkInterpType}}]  the interpolation type for the transformation.}
\item{\code{overall.alpha}}{[integer]  overall alpha for source image (0..255)}
\item{\code{check.size}}{[integer]  the size of checks in the checkboard (must be a power of two)}
\item{\code{color1}}{[numeric]  the color of check at upper left}
\item{\code{color2}}{[numeric]  the color of the other check}
}
\value{[\code{\link{GdkPixbuf}}]  the new \code{\link{GdkPixbuf}}, or \code{NULL} if not enough memory could be
allocated for it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
