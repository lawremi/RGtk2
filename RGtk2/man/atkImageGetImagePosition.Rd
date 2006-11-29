\alias{atkImageGetImagePosition}
\name{atkImageGetImagePosition}
\title{atkImageGetImagePosition}
\description{Gets the position of the image in the form of a point specifying the
images top-left corner.}
\usage{atkImageGetImagePosition(object, coord.type)}
\arguments{
\item{\code{object}}{[\code{\link{AtkImage}}]  a \code{\link{GObject}} instance that implements AtkImageIface}
\item{\code{coord.type}}{[\code{\link{AtkCoordType}}]  specifies whether the coordinates are relative to the screen
or to the components top level window}
}
\value{
A list containing the following elements:
\item{\code{x}}{[integer]  \code{integer} to put x coordinate position; otherwise, -1 if value cannot be obtained.}
\item{\code{y}}{[integer]  \code{integer} to put y coordinate position; otherwise, -1 if value cannot be obtained.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
