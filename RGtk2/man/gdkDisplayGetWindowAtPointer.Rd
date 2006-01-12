\alias{gdkDisplayGetWindowAtPointer}
\name{gdkDisplayGetWindowAtPointer}
\title{gdkDisplayGetWindowAtPointer}
\description{Obtains the window underneath the mouse pointer, returning the location
of that window in \code{win.x}, \code{win.y} for \code{screen}. Returns \code{NULL} if the window 
under the mouse pointer is not known to GDK (for example, belongs to
another application).}
\usage{gdkDisplayGetWindowAtPointer(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkDisplay}}]  a \code{\link{GdkDisplay}}}}
\details{  Since  2.2}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkWindow}}]  the window under the mouse pointer, or \code{NULL}}
\item{\code{win.x}}{[integer]  return location for origin of the window under the pointer}
\item{\code{win.y}}{[integer]  return location for origin of the window under the pointer}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
