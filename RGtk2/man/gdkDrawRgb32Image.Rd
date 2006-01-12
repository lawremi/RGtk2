\alias{gdkDrawRgb32Image}
\name{gdkDrawRgb32Image}
\title{gdkDrawRgb32Image}
\description{Draws a padded RGB image in the drawable. The image is stored as one
pixel per 32-bit word. It is laid out as a red byte, a green byte, a
blue byte, and a padding byte.}
\usage{gdkDrawRgb32Image(object, gc, x, y, width, height, dith, buf)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}] The \code{\link{GdkDrawable}} to draw in (usually a \code{\link{GdkWindow}}).}
\item{\code{gc}}{[\code{\link{GdkGC}}] The graphics context.}
\item{\code{x}}{[integer] The x coordinate of the top-left corner in the drawable.}
\item{\code{y}}{[integer] The y coordinate of the top-left corner in the drawable.}
\item{\code{width}}{[integer] The width of the rectangle to be drawn.}
\item{\code{height}}{[integer] The height of the rectangle to be drawn.}
\item{\code{dith}}{[\code{\link{GdkRgbDither}}] A \code{\link{GdkRgbDither}} value, selecting the desired dither mode.}
\item{\code{buf}}{[integer] The pixel data, represented as padded 32-bit data.}
}
\details{It's unlikely that this function will give significant performance
gains in practice. In my experience, the performance gain from having
pixels aligned to 32-bit boundaries is cancelled out by the increased
memory bandwidth.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
