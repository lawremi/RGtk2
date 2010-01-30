\alias{gdkWindowGetPointer}
\name{gdkWindowGetPointer}
\title{gdkWindowGetPointer}
\description{Obtains the current pointer position and modifier state.
The position is given in coordinates relative to the upper left 
corner of \code{window}.}
\usage{gdkWindowGetPointer(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GdkWindow}}]  the window containing the pointer (as with
\code{\link{gdkWindowAtPointer}}), or \code{NULL} if the window containing the
pointer isn't known to GDK}
\item{\verb{x}}{[integer]  return location for X coordinate of pointer or \code{NULL} to not
     return the X coordinate}
\item{\verb{y}}{[integer]  return location for Y coordinate of pointer or \code{NULL} to not
     return the Y coordinate}
\item{\verb{mask}}{[\code{\link{GdkModifierType}}]  return location for modifier mask or \code{NULL} to not return the
     modifier mask}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
