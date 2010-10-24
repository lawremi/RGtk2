\alias{gdkWindowWithdraw}
\name{gdkWindowWithdraw}
\title{gdkWindowWithdraw}
\description{Withdraws a window (unmaps it and asks the window manager to forget about it).
This function is not really useful as \code{\link{gdkWindowHide}} automatically
withdraws toplevel windows before hiding them.}
\usage{gdkWindowWithdraw(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
