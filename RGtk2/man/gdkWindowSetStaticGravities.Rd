\alias{gdkWindowSetStaticGravities}
\name{gdkWindowSetStaticGravities}
\title{gdkWindowSetStaticGravities}
\description{Set the bit gravity of the given window to static, and flag it so
all children get static subwindow gravity. This is used if you are
implementing scary features that involve deep knowledge of the
windowing system. Don't worry about it unless you have to.}
\usage{gdkWindowSetStaticGravities(object, use.static)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{use.static}}{[logical] \code{TRUE} to turn on static gravity}
}
\value{[logical] \code{TRUE} if the server supports static gravity}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
