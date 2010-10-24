\alias{gdkWindowSetIconName}
\name{gdkWindowSetIconName}
\title{gdkWindowSetIconName}
\description{Windows may have a name used while minimized, distinct from the
name they display in their titlebar. Most of the time this is a bad
idea from a user interface standpoint. But you can set such a name
with this function, if you like.}
\usage{gdkWindowSetIconName(object, name)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{name}}{name of window while iconified (minimized)}
}
\details{After calling this with a non-\code{NULL} \code{name}, calls to \code{\link{gdkWindowSetTitle}}
will not update the icon title.
  
Using \code{NULL} for \code{name} unsets the icon title; further calls to
\code{\link{gdkWindowSetTitle}} will again update the icon title as well.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
