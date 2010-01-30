\alias{gdkWindowConstrainSize}
\name{gdkWindowConstrainSize}
\title{gdkWindowConstrainSize}
\description{Constrains a desired width and height according to a 
set of geometry hints (such as minimum and maximum size).}
\usage{gdkWindowConstrainSize(geometry, width, height)}
\arguments{
\item{\verb{geometry}}{[\verb{\link{GdkGeometry}}]  a \verb{\link{GdkGeometry}} structure}
\item{\verb{width}}{[integer]  desired width of window}
\item{\verb{height}}{[integer]  desired height of the window}
}
\value{
A list containing the following elements:
\item{\verb{new.width}}{[integer]  location to store resulting width}
\item{\verb{new.height}}{[integer]  location to store resulting height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
