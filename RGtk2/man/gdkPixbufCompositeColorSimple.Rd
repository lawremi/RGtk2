\alias{gdkPixbufCompositeColorSimple}
\name{gdkPixbufCompositeColorSimple}
\title{gdkPixbufCompositeColorSimple}
\description{Creates a new \verb{\link{GdkPixbuf}} by scaling \code{src} to \code{dest.width} x
\code{dest.height} and compositing the result with a checkboard of colors
\code{color1} and \code{color2}.}
\usage{gdkPixbufCompositeColorSimple(object, dest.width, dest.height, interp.type, overall.alpha, check.size, color1, color2)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkPixbuf}}]  a \verb{\link{GdkPixbuf}}}
\item{\verb{dest.width}}{[integer]  the width of destination image}
\item{\verb{dest.height}}{[integer]  the height of destination image}
\item{\verb{interp.type}}{[\code{\link{GdkInterpType}}]  the interpolation type for the transformation.}
\item{\verb{overall.alpha}}{[integer]  overall alpha for source image (0..255)}
\item{\verb{check.size}}{[integer]  the size of checks in the checkboard (must be a power of two)}
\item{\verb{color1}}{[numeric]  the color of check at upper left}
\item{\verb{color2}}{[numeric]  the color of the other check}
}
\value{[\verb{\link{GdkPixbuf}}]  the new \verb{\link{GdkPixbuf}}, or \code{NULL} if not enough memory could be
allocated for it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
