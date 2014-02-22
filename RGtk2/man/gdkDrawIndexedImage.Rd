\alias{gdkDrawIndexedImage}
\name{gdkDrawIndexedImage}
\title{gdkDrawIndexedImage}
\description{Draws an indexed image in the drawable, using a \code{\link{GdkRgbCmap}} to assign
actual colors to the color indices.}
\usage{gdkDrawIndexedImage(object, gc, x, y, width, height, dith, buf, 
    cmap)}
\arguments{
\item{\verb{object}}{The \code{\link{GdkDrawable}} to draw in (usually a \code{\link{GdkWindow}}).}
\item{\verb{gc}}{The graphics context.}
\item{\verb{x}}{The x coordinate of the top-left corner in the drawable.}
\item{\verb{y}}{The y coordinate of the top-left corner in the drawable.}
\item{\verb{width}}{The width of the rectangle to be drawn.}
\item{\verb{height}}{The height of the rectangle to be drawn.}
\item{\verb{dith}}{A \code{\link{GdkRgbDither}} value, selecting the desired dither mode.}
\item{\verb{buf}}{The pixel data, represented as 8-bit color indices.}
\item{\verb{cmap}}{The \code{\link{GdkRgbCmap}} used to assign colors to the color indices.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
