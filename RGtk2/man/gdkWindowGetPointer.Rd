\alias{gdkWindowGetPointer}
\name{gdkWindowGetPointer}
\title{gdkWindowGetPointer}
\description{Obtains the current pointer position and modifier state.
The position is given in coordinates relative to the upper left
corner of \code{window}.}
\usage{gdkWindowGetPointer(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkWindow}}] the window containing the pointer (as with
\code{\link{gdkWindowAtPointer}}), or \code{NULL} if the window containing the
pointer isn't known to GDK. \emph{[  \acronym{transfer none}  ]}}
\item{\verb{x}}{return location for X coordinate of pointer or \code{NULL} to not
return the X coordinate. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{y}}{return location for Y coordinate of pointer or \code{NULL} to not
return the Y coordinate. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
\item{\verb{mask}}{return location for modifier mask or \code{NULL} to not return the
modifier mask. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
