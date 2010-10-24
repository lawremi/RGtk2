\alias{gdkWindowSetSkipPagerHint}
\name{gdkWindowSetSkipPagerHint}
\title{gdkWindowSetSkipPagerHint}
\description{Toggles whether a window should appear in a pager (workspace
switcher, or other desktop utility program that displays a small
thumbnail representation of the windows on the desktop). If a
window's semantic type as specified with \code{\link{gdkWindowSetTypeHint}}
already fully describes the window, this function should 
\emph{not} be called in addition, instead you should 
allow the window to be treated according to standard policy for 
its semantic type.}
\usage{gdkWindowSetSkipPagerHint(object, modal)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{modal}}{\code{TRUE} to skip the pager}
}
\details{Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
