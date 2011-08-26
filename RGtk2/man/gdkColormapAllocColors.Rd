\alias{gdkColormapAllocColors}
\name{gdkColormapAllocColors}
\title{gdkColormapAllocColors}
\description{Allocates colors from a colormap.}
\usage{gdkColormapAllocColors(colormap, colors, writeable, best.match)}
\arguments{
\item{\verb{colors}}{The color values to allocate. On return, the pixel
values for allocated colors will be filled in.}
\item{\verb{writeable}}{If \code{TRUE}, the colors are allocated writeable
(their values can later be changed using \code{\link{gdkColorChange}}).
Writeable colors cannot be shared between applications.}
\item{\verb{best.match}}{If \code{TRUE}, GDK will attempt to do matching against
existing colors if the colors cannot be allocated as requested.}
}
\value{
A list containing the following elements:
\item{retval}{[integer] The number of colors that were not successfully
allocated.}
\item{\verb{success}}{An list of length \code{ncolors}. On return, this
indicates whether the corresponding color in \code{colors} was
successfully allocated or not.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
