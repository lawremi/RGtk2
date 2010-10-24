\alias{gdkGCGetValues}
\name{gdkGCGetValues}
\title{gdkGCGetValues}
\description{Retrieves the current values from a graphics context. Note that 
only the pixel values of the \code{values->foreground} and \code{values->background}
are filled, use \code{\link{gdkColormapQueryColor}} to obtain the rgb values
if you need them.}
\usage{gdkGCGetValues(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkGC}}.}}
\value{
A list containing the following elements:
\item{\verb{values}}{the \code{\link{GdkGCValues}} structure in which to store the results.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
