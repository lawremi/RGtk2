\alias{gdkWindowRaise}
\name{gdkWindowRaise}
\title{gdkWindowRaise}
\description{Raises \code{window} to the top of the Z-order (stacking order), so that
other windows with the same parent window appear below \code{window}.
This is true whether or not the windows are visible.}
\usage{gdkWindowRaise(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{If \code{window} is a toplevel, the window manager may choose to deny the
request to move the window in the Z-order, \code{\link{gdkWindowRaise}} only
requests the restack, does not guarantee it.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
