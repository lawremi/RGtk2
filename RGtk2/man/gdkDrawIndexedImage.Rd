\alias{gdkDrawIndexedImage}
\name{gdkDrawIndexedImage}
\title{gdkDrawIndexedImage}
\description{Draws an indexed image in the drawable, using a \code{\link{GdkRgbCmap}} to assign
actual colors to the color indices.}
\usage{gdkDrawIndexedImage(object, gc, x, y, width, height, dith, buf, cmap)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}] The \code{\link{GdkDrawable}} to draw in (usually a \code{\link{GdkWindow}}).}
\item{\code{gc}}{[\code{\link{GdkGC}}] The graphics context.}
\item{\code{x}}{[integer] The x coordinate of the top-left corner in the drawable.}
\item{\code{y}}{[integer] The y coordinate of the top-left corner in the drawable.}
\item{\code{width}}{[integer] The width of the rectangle to be drawn.}
\item{\code{height}}{[integer] The height of the rectangle to be drawn.}
\item{\code{dith}}{[\code{\link{GdkRgbDither}}] A \code{\link{GdkRgbDither}} value, selecting the desired dither mode.}
\item{\code{buf}}{[raw] The pixel data, represented as 8-bit color indices.}
\item{\code{cmap}}{[\code{\link{GdkRgbCmap}}] The \code{\link{GdkRgbCmap}} used to assign colors to the color indices.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
