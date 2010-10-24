\alias{atkImageGetImagePosition}
\name{atkImageGetImagePosition}
\title{atkImageGetImagePosition}
\description{Gets the position of the image in the form of a point specifying the
images top-left corner.}
\usage{atkImageGetImagePosition(object, coord.type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkImage}}]  a \code{\link{GObject}} instance that implements AtkImageIface}
\item{\verb{coord.type}}{[\code{\link{AtkCoordType}}]  specifies whether the coordinates are relative to the screen
or to the components top level window}
}
\value{
A list containing the following elements:
\item{\verb{x}}{[integer]  \verb{integer} to put x coordinate position; otherwise, -1 if value cannot be obtained.}
\item{\verb{y}}{[integer]  \verb{integer} to put y coordinate position; otherwise, -1 if value cannot be obtained.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
