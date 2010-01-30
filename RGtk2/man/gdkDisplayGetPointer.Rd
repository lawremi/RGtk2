\alias{gdkDisplayGetPointer}
\name{gdkDisplayGetPointer}
\title{gdkDisplayGetPointer}
\description{Gets the current location of the pointer and the current modifier
mask for a given display.}
\usage{gdkDisplayGetPointer(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GdkDisplay}}]  a \verb{\link{GdkDisplay}}}}
\details{  Since  2.2}
\value{
A list containing the following elements:
\item{\verb{screen}}{[\verb{\link{GdkScreen}}]  location to store the screen that the
         cursor is on, or \code{NULL}.}
\item{\verb{x}}{[integer]  location to store root window X coordinate of pointer, or \code{NULL}.}
\item{\verb{y}}{[integer]  location to store root window Y coordinate of pointer, or \code{NULL}.}
\item{\verb{mask}}{[\code{\link{GdkModifierType}}]  location to store current modifier mask, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
