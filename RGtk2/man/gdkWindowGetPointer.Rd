\alias{gdkWindowGetPointer}
\name{gdkWindowGetPointer}
\title{gdkWindowGetPointer}
\description{Obtains the current pointer position and modifier state.
The position is given in coordinates relative to the upper left 
corner of \code{window}.}
\usage{gdkWindowGetPointer(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkWindow}}]  the window containing the pointer (as with
\code{\link{gdkWindowAtPointer}}), or \code{NULL} if the window containing the
pointer isn't known to GDK}
\item{\code{x}}{[integer]  return location for X coordinate of pointer}
\item{\code{y}}{[integer]  return location for Y coordinate of pointer}
\item{\code{mask}}{[\code{\link{GdkModifierType}}]  return location for modifier mask}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
