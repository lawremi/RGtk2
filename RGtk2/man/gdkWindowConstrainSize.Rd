\alias{gdkWindowConstrainSize}
\name{gdkWindowConstrainSize}
\title{gdkWindowConstrainSize}
\description{Constrains a desired width and height according to a
set of geometry hints (such as minimum and maximum size).}
\usage{gdkWindowConstrainSize(geometry, width, height)}
\arguments{
\item{\verb{geometry}}{a \code{\link{GdkGeometry}} structure}
\item{\verb{width}}{desired width of window}
\item{\verb{height}}{desired height of the window}
}
\value{
A list containing the following elements:
\item{\verb{new.width}}{location to store resulting width}
\item{\verb{new.height}}{location to store resulting height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
