\alias{gdkWindowConstrainSize}
\name{gdkWindowConstrainSize}
\title{gdkWindowConstrainSize}
\description{Constrains a desired width and height according to a 
set of geometry hints (such as minimum and maximum size).}
\usage{gdkWindowConstrainSize(geometry, width, height)}
\arguments{
\item{\code{geometry}}{[\code{\link{GdkGeometry}}]  a \code{\link{GdkGeometry}} structure}
\item{\code{width}}{[integer]  desired width of window}
\item{\code{height}}{[integer]  desired height of the window}
}
\value{
A list containing the following elements:
\item{\code{new.width}}{[integer]  location to store resulting width}
\item{\code{new.height}}{[integer]  location to store resulting height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
