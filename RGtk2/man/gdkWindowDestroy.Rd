\alias{gdkWindowDestroy}
\name{gdkWindowDestroy}
\title{gdkWindowDestroy}
\description{Destroys the window system resources associated with \code{window} and decrements \code{window}'s
reference count. The window system resources for all children of \code{window} are also
destroyed, but the children's reference counts are not decremented.}
\usage{gdkWindowDestroy(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{Note that a window will not be destroyed automatically when its reference count
reaches zero. You must call this function yourself before that happens.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
