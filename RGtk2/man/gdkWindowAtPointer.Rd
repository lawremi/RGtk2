\alias{gdkWindowAtPointer}
\name{gdkWindowAtPointer}
\title{gdkWindowAtPointer}
\description{Obtains the window underneath the mouse pointer, returning the
location of that window in \code{win.x}, \code{win.y}. Returns \code{NULL} if the
window under the mouse pointer is not known to GDK (if the window
belongs to another application and a \code{\link{GdkWindow}} hasn't been created
for it with \code{gdkWindowForeignNew()})}
\usage{gdkWindowAtPointer()}
\details{NOTE: For multihead-aware widgets or applications use
\code{\link{gdkDisplayGetWindowAtPointer}} instead.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkWindow}}] window under the mouse pointer. \emph{[  \acronym{transfer none}  ]}}
\item{\verb{win.x}}{return location for origin of the window under the pointer. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{win.y}}{return location for origin of the window under the pointer. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
