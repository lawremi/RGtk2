\alias{gdkDrawRgb32ImageDithalign}
\name{gdkDrawRgb32ImageDithalign}
\title{gdkDrawRgb32ImageDithalign}
\description{Like \code{\link{gdkDrawRgb32Image}}, but allows you to specify the dither
offsets. See \code{\link{gdkDrawRgbImageDithalign}} for more details.}
\usage{gdkDrawRgb32ImageDithalign(object, gc, x, y, width, height, dith, 
    buf, xdith, ydith)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}}}
\item{\verb{gc}}{a \code{\link{GdkGC}}}
\item{\verb{x}}{X coordinate on \code{drawable} where image should go}
\item{\verb{y}}{Y coordinate on \code{drawable} where image should go}
\item{\verb{width}}{width of area of image to draw}
\item{\verb{height}}{height of area of image to draw}
\item{\verb{dith}}{dithering mode}
\item{\verb{buf}}{RGB image data}
\item{\verb{xdith}}{X dither offset}
\item{\verb{ydith}}{Y dither offset}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
