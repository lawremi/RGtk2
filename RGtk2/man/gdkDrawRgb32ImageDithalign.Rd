\alias{gdkDrawRgb32ImageDithalign}
\name{gdkDrawRgb32ImageDithalign}
\title{gdkDrawRgb32ImageDithalign}
\description{Like \code{\link{gdkDrawRgb32Image}}, but allows you to specify the dither
offsets. See \code{\link{gdkDrawRgbImageDithalign}} for more details.}
\usage{gdkDrawRgb32ImageDithalign(object, gc, x, y, width, height, dith, buf, xdith, ydith)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}}}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}}
\item{\code{x}}{[integer]  X coordinate on \code{drawable} where image should go}
\item{\code{y}}{[integer]  Y coordinate on \code{drawable} where image should go}
\item{\code{width}}{[integer]  width of area of image to draw}
\item{\code{height}}{[integer]  height of area of image to draw}
\item{\code{dith}}{[\code{\link{GdkRgbDither}}]  dithering mode}
\item{\code{buf}}{[integer]  RGB image data}
\item{\code{xdith}}{[integer]  X dither offset}
\item{\code{ydith}}{[integer]  Y dither offset}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
