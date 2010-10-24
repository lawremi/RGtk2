\alias{gdkWindowLower}
\name{gdkWindowLower}
\title{gdkWindowLower}
\description{Lowers \code{window} to the bottom of the Z-order (stacking order), so that
other windows with the same parent window appear above \code{window}.
This is true whether or not the other windows are visible.}
\usage{gdkWindowLower(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{If \code{window} is a toplevel, the window manager may choose to deny the
request to move the window in the Z-order, \code{\link{gdkWindowLower}} only
requests the restack, does not guarantee it.
  
Note that \code{\link{gdkWindowShow}} raises the window again, so don't call this
function before \code{\link{gdkWindowShow}}. (Try \code{\link{gdkWindowShowUnraised}}.)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
