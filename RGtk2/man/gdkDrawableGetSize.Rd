\alias{gdkDrawableGetSize}
\name{gdkDrawableGetSize}
\title{gdkDrawableGetSize}
\description{Fills *\code{width} and *\code{height} with the size of \code{drawable}.
\code{width} or \code{height} can be \code{NULL} if you only want the other one.}
\usage{gdkDrawableGetSize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDrawable}}}}
\details{On the X11 platform, if \code{drawable} is a \code{\link{GdkWindow}}, the returned
size is the size reported in the most-recently-processed configure
event, rather than the current size on the X server.}
\value{
A list containing the following elements:
\item{\verb{width}}{(out): location to store drawable's width, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{height}}{(out): location to store drawable's height, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
