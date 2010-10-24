\alias{gdkDrawRgb32Image}
\name{gdkDrawRgb32Image}
\title{gdkDrawRgb32Image}
\description{Draws a padded RGB image in the drawable. The image is stored as one
pixel per 32-bit word. It is laid out as a red byte, a green byte, a
blue byte, and a padding byte.}
\usage{gdkDrawRgb32Image(object, gc, x, y, width, height, dith, buf)}
\arguments{
\item{\verb{object}}{The \code{\link{GdkDrawable}} to draw in (usually a \code{\link{GdkWindow}}).}
\item{\verb{gc}}{The graphics context.}
\item{\verb{x}}{The x coordinate of the top-left corner in the drawable.}
\item{\verb{y}}{The y coordinate of the top-left corner in the drawable.}
\item{\verb{width}}{The width of the rectangle to be drawn.}
\item{\verb{height}}{The height of the rectangle to be drawn.}
\item{\verb{dith}}{A \code{\link{GdkRgbDither}} value, selecting the desired dither mode.}
\item{\verb{buf}}{The pixel data, represented as padded 32-bit data.}
}
\details{It's unlikely that this function will give significant performance
gains in practice. In my experience, the performance gain from having
pixels aligned to 32-bit boundaries is cancelled out by the increased
memory bandwidth.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
