\alias{gdkColorAlloc}
\name{gdkColorAlloc}
\title{gdkColorAlloc}
\description{
Allocates a single color from a colormap.
\strong{WARNING: \code{gdk_color_alloc} has been deprecated since version 2.2 and should not be used in newly-written code. Use \code{\link{gdkColormapAllocColor}} instead.}
}
\usage{gdkColorAlloc(object, color)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkColormap}}.}
\item{\verb{color}}{The color to allocate. On return, the
\code{pixel} field will be filled in.}
}
\value{[integer] \code{TRUE} if the allocation succeeded.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
