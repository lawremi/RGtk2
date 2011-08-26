\alias{gdkWindowGetUpdateArea}
\name{gdkWindowGetUpdateArea}
\title{gdkWindowGetUpdateArea}
\description{Transfers ownership of the update area from \code{window} to the caller
of the function. That is, after calling this function, \code{window} will
no longer have an invalid/dirty region; the update area is removed
from \code{window} and handed to you. If a window has no update area,
\code{\link{gdkWindowGetUpdateArea}} returns \code{NULL}.}
\usage{gdkWindowGetUpdateArea(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\value{[\code{\link{GdkRegion}}] the update area for \code{window}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
