\alias{gdkWindowGetDeskrelativeOrigin}
\name{gdkWindowGetDeskrelativeOrigin}
\title{gdkWindowGetDeskrelativeOrigin}
\description{
This gets the origin of a \code{\link{GdkWindow}} relative to
an Enlightenment-window-manager desktop. As long as you don't
assume that the user's desktop/workspace covers the entire
root window (i.e. you don't assume that the desktop begins
at root window coordinate 0,0) this function is not necessary.
It's deprecated for that reason.
\strong{WARNING: \code{gdk_window_get_deskrelative_origin} is deprecated and should not be used in newly-written code.}
}
\usage{gdkWindowGetDeskrelativeOrigin(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\value{
A list containing the following elements:
\item{retval}{[logical] not meaningful}
\item{\verb{x}}{return location for X coordinate}
\item{\verb{y}}{return location for Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
