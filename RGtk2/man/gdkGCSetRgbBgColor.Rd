\alias{gdkGCSetRgbBgColor}
\name{gdkGCSetRgbBgColor}
\title{gdkGCSetRgbBgColor}
\description{Set the background color of a GC using an unallocated color. The
pixel value for the color will be determined using GdkRGB. If the
colormap for the GC has not previously been initialized for GdkRGB,
then for pseudo-color colormaps (colormaps with a small modifiable
number of colors), a colorcube will be allocated in the colormap.}
\usage{gdkGCSetRgbBgColor(object, color)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkGC}}}
\item{\verb{color}}{an unallocated \code{\link{GdkColor}}.}
}
\details{Calling this function for a GC without a colormap is an error.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
