\alias{gdkWindowSetIconName}
\name{gdkWindowSetIconName}
\title{gdkWindowSetIconName}
\description{Windows may have a name used while minimized, distinct from the
name they display in their titlebar. Most of the time this is a bad
idea from a user interface standpoint. But you can set such a name
with this function, if you like.}
\usage{gdkWindowSetIconName(object, name)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a toplevel \code{\link{GdkWindow}}}
\item{\code{name}}{[character]  name of window while iconified (minimized)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
