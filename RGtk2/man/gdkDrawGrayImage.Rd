\alias{gdkDrawGrayImage}
\name{gdkDrawGrayImage}
\title{gdkDrawGrayImage}
\description{Draws a grayscale image in the drawable.}
\usage{gdkDrawGrayImage(object, gc, x, y, width, height, dith, buf)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}] The \verb{\link{GdkDrawable}} to draw in (usually a \verb{\link{GdkWindow}}).}
\item{\verb{gc}}{[\verb{\link{GdkGC}}] The graphics context.}
\item{\verb{x}}{[integer] The x coordinate of the top-left corner in the drawable.}
\item{\verb{y}}{[integer] The y coordinate of the top-left corner in the drawable.}
\item{\verb{width}}{[integer] The width of the rectangle to be drawn.}
\item{\verb{height}}{[integer] The height of the rectangle to be drawn.}
\item{\verb{dith}}{[\code{\link{GdkRgbDither}}] A \code{\link{GdkRgbDither}} value, selecting the desired dither mode.}
\item{\verb{buf}}{[raw] The pixel data, represented as 8-bit gray values.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
