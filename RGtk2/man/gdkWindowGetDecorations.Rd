\alias{gdkWindowGetDecorations}
\name{gdkWindowGetDecorations}
\title{gdkWindowGetDecorations}
\description{Returns the decorations set on the GdkWindow with \code{\link{gdkWindowSetDecorations}}}
\usage{gdkWindowGetDecorations(object)}
\arguments{\item{\verb{object}}{The toplevel \code{\link{GdkWindow}} to get the decorations from}}
\value{
A list containing the following elements:
\item{retval}{[logical] TRUE if the window has decorations set, FALSE otherwise.}
\item{\verb{decorations}}{The window decorations will be written here}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
