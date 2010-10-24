\alias{gdkColormapQueryColor}
\name{gdkColormapQueryColor}
\title{gdkColormapQueryColor}
\description{Locates the RGB color in \code{colormap} corresponding to the given
hardware pixel \code{pixel}. \code{pixel} must be a valid pixel in the
colormap; it's a programmer error to call this function with a
pixel which is not in the colormap. Hardware pixels are normally
obtained from \code{\link{gdkColormapAllocColors}}, or from a \code{\link{GdkImage}}. (A
\code{\link{GdkImage}} contains image data in hardware format, a \code{\link{GdkPixbuf}}
contains image data in a canonical 24-bit RGB format.)}
\usage{gdkColormapQueryColor(object, pixel)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkColormap}}}
\item{\verb{pixel}}{pixel value in hardware display format}
}
\details{This function is rarely useful; it's used for example to
implement the eyedropper feature in \code{\link{GtkColorSelection}}.}
\value{
A list containing the following elements:
\item{\verb{result}}{\code{\link{GdkColor}} with red, green, blue fields initialized}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
