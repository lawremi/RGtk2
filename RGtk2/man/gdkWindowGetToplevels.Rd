\alias{gdkWindowGetToplevels}
\name{gdkWindowGetToplevels}
\title{gdkWindowGetToplevels}
\description{
Obtains a list of all toplevel windows known to GDK on the default
screen (see \code{\link{gdkScreenGetToplevelWindows}}).
A toplevel window is a child of the root window (see
\code{\link{gdkGetDefaultRootWindow}}).
\strong{WARNING: \code{gdk_window_get_toplevels} has been deprecated since version 2.16 and should not be used in newly-written code. Use \code{\link{gdkScreenGetToplevelWindows}} instead.}
}
\usage{gdkWindowGetToplevels()}
\details{ but
its elements need not be freed.}
\value{[list] list of toplevel windows,}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
