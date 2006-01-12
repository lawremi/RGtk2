\alias{gdkWindowSetTypeHint}
\name{gdkWindowSetTypeHint}
\title{gdkWindowSetTypeHint}
\description{The application can use this call to provide a hint to the window
manager about the functionality of a window. The window manager
can use this information when determining the decoration and behaviour
of the window.}
\usage{gdkWindowSetTypeHint(object, hint)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  A toplevel \code{\link{GdkWindow}}}
\item{\code{hint}}{[\code{\link{GdkWindowTypeHint}}]  A hint of the function this window will have}
}
\details{The hint must be set before the window is mapped.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
