\alias{gdkDrawRgb32ImageDithalign}
\name{gdkDrawRgb32ImageDithalign}
\title{gdkDrawRgb32ImageDithalign}
\description{Like \code{\link{gdkDrawRgb32Image}}, but allows you to specify the dither
offsets. See \code{\link{gdkDrawRgbImageDithalign}} for more details.}
\usage{gdkDrawRgb32ImageDithalign(object, gc, x, y, width, height, dith, buf, xdith, ydith)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}}}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}}
\item{\verb{x}}{[integer]  X coordinate on \code{drawable} where image should go}
\item{\verb{y}}{[integer]  Y coordinate on \code{drawable} where image should go}
\item{\verb{width}}{[integer]  width of area of image to draw}
\item{\verb{height}}{[integer]  height of area of image to draw}
\item{\verb{dith}}{[\code{\link{GdkRgbDither}}]  dithering mode}
\item{\verb{buf}}{[raw]  RGB image data}
\item{\verb{xdith}}{[integer]  X dither offset}
\item{\verb{ydith}}{[integer]  Y dither offset}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
