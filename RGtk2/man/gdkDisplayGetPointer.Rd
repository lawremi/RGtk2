\alias{gdkDisplayGetPointer}
\name{gdkDisplayGetPointer}
\title{gdkDisplayGetPointer}
\description{Gets the current location of the pointer and the current modifier
mask for a given display.}
\usage{gdkDisplayGetPointer(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDisplay}}}}
\details{Since 2.2}
\value{
A list containing the following elements:
\item{\verb{screen}}{location to store the screen that the
cursor is on, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x}}{(out): location to store root window X coordinate of pointer, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{y}}{(out): location to store root window Y coordinate of pointer, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{mask}}{(out): location to store current modifier mask, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
