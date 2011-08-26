\alias{gdkDisplayGetWindowAtPointer}
\name{gdkDisplayGetWindowAtPointer}
\title{gdkDisplayGetWindowAtPointer}
\description{Obtains the window underneath the mouse pointer, returning the location
of the pointer in that window in \code{win.x}, \code{win.y} for \code{screen}. Returns \code{NULL}
if the window under the mouse pointer is not known to GDK (for example, 
belongs to another application).}
\usage{gdkDisplayGetWindowAtPointer(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDisplay}}}}
\details{Since 2.2}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkWindow}}] the window under the mouse pointer, or \code{NULL}. \emph{[  \acronym{transfer none}  ]}}
\item{\verb{win.x}}{return location for x coordinate of the pointer location relative
to the window origin, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{win.y}}{return location for y coordinate of the pointer location relative
&    to the window origin, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
