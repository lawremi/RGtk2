\alias{gdkWindowSetFocusOnMap}
\name{gdkWindowSetFocusOnMap}
\title{gdkWindowSetFocusOnMap}
\description{Setting \code{focus.on.map} to \code{FALSE} hints the desktop environment that the
window doesn't want to receive input focus when it is mapped.  
focus_on_map should be turned off for windows that aren't triggered
interactively (such as popups from network activity).}
\usage{gdkWindowSetFocusOnMap(object, focus.on.map)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{focus.on.map}}{\code{TRUE} if the window should receive input focus when mapped}
}
\details{On X, it is the responsibility of the window manager to interpret
this hint. Window managers following the freedesktop.org window
manager extension specification should respect it.
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
