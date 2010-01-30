\alias{gdkColorAlloc}
\name{gdkColorAlloc}
\title{gdkColorAlloc}
\description{
Allocates a single color from a colormap.
\strong{WARNING: \code{gdk_color_alloc} is deprecated and should not be used in newly-written code. Use \code{\link{gdkColormapAllocColor}} instead.}
}
\usage{gdkColorAlloc(object, color)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkColormap}}]  a \verb{\link{GdkColormap}}.}
\item{\verb{color}}{[\verb{\link{GdkColor}}]  The color to allocate. On return, the 
   \code{pixel} field will be filled in.}
}
\value{[integer] \code{TRUE} if the allocation succeeded.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
