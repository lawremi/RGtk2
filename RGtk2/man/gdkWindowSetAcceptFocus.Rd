\alias{gdkWindowSetAcceptFocus}
\name{gdkWindowSetAcceptFocus}
\title{gdkWindowSetAcceptFocus}
\description{Setting \code{accept.focus} to \code{FALSE} hints the desktop environment that the
window doesn't want to receive input focus. }
\usage{gdkWindowSetAcceptFocus(object, accept.focus)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{accept.focus}}{\code{TRUE} if the window should receive input focus}
}
\details{On X, it is the responsibility of the window manager to interpret this 
hint. ICCCM-compliant window manager usually respect it.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
