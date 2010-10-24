\alias{gdkWindowSetModalHint}
\name{gdkWindowSetModalHint}
\title{gdkWindowSetModalHint}
\description{The application can use this hint to tell the window manager
that a certain window has modal behaviour. The window manager
can use this information to handle modal windows in a special
way.}
\usage{gdkWindowSetModalHint(object, modal)}
\arguments{
\item{\verb{object}}{A toplevel \code{\link{GdkWindow}}}
\item{\verb{modal}}{\code{TRUE} if the window is modal, \code{FALSE} otherwise.}
}
\details{You should only use this on windows for which you have
previously called \code{\link{gdkWindowSetTransientFor}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
