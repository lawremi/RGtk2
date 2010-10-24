\alias{atkImageGetImageSize}
\name{atkImageGetImageSize}
\title{atkImageGetImageSize}
\description{Get the width and height in pixels for the specified image.
The values of \code{width} and \code{height} are returned as -1 if the
values cannot be obtained (for instance, if the object is not onscreen).}
\usage{atkImageGetImageSize(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkImage}}]  a \code{\link{GObject}} instance that implements AtkImageIface}}
\value{
A list containing the following elements:
\item{\verb{width}}{[integer]  filled with the image width, or -1 if the value cannot be obtained.}
\item{\verb{height}}{[integer]  filled with the image height, or -1 if the value cannot be obtained.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
