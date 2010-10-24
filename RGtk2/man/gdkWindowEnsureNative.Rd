\alias{gdkWindowEnsureNative}
\name{gdkWindowEnsureNative}
\title{gdkWindowEnsureNative}
\description{Tries to ensure that there is a window-system native window for this
GdkWindow. This may fail in some situations, returning \code{FALSE}.}
\usage{gdkWindowEnsureNative(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{Offscreen window and children of them can never have native windows.
  
Some backends may not support native child windows.
  Since 2.18}
\value{[logical] \code{TRUE} if the window has a native window, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
