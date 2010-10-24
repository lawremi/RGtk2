\alias{gdkWindowGetRootOrigin}
\name{gdkWindowGetRootOrigin}
\title{gdkWindowGetRootOrigin}
\description{Obtains the top-left corner of the window manager frame in root
window coordinates.}
\usage{gdkWindowGetRootOrigin(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\value{
A list containing the following elements:
\item{\verb{x}}{return location for X position of window frame}
\item{\verb{y}}{return location for Y position of window frame}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
