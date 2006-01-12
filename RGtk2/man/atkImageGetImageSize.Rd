\alias{atkImageGetImageSize}
\name{atkImageGetImageSize}
\title{atkImageGetImageSize}
\description{Get the width and height in pixels for the specified image.
The values of \code{width} and \code{height} are returned as -1 if the
values cannot be obtained.}
\usage{atkImageGetImageSize(object)}
\arguments{\item{\code{object}}{[\code{\link{AtkImage}}]  a \code{\link{GObject}} instance that implements AtkImageIface}}
\value{
A list containing the following elements:
\item{\code{width}}{[integer]  filled with the image width}
\item{\code{height}}{[integer]  filled with the image height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
