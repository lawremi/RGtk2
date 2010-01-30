\alias{gdkWindowAtPointer}
\name{gdkWindowAtPointer}
\title{gdkWindowAtPointer}
\description{Obtains the window underneath the mouse pointer, returning the
location of that window in \code{win.x}, \code{win.y}. Returns \code{NULL} if the
window under the mouse pointer is not known to GDK (if the window
belongs to another application and a \verb{\link{GdkWindow}} hasn't been created
for it with \code{gdkWindowForeignNew()})}
\usage{gdkWindowAtPointer()}
\details{NOTE: For multihead-aware widgets or applications use
\code{\link{gdkDisplayGetWindowAtPointer}} instead.  }
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GdkWindow}}]  window under the mouse pointer}
\item{\verb{win.x}}{[integer]  return location for origin of the window under the pointer}
\item{\verb{win.y}}{[integer]  return location for origin of the window under the pointer}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
