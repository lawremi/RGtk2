\alias{gdkScreenGetToplevelWindows}
\name{gdkScreenGetToplevelWindows}
\title{gdkScreenGetToplevelWindows}
\description{Obtains a list of all toplevel windows known to GDK on the screen \code{screen}.
A toplevel window is a child of the root window (see
\code{\link{gdkGetDefaultRootWindow}}).}
\usage{gdkScreenGetToplevelWindows(object)}
\arguments{\item{\verb{object}}{The \code{\link{GdkScreen}} where the toplevels are located.}}
\details{ but
its elements need not be freed.
  Since 2.2}
\value{[list] list of toplevel windows,}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
