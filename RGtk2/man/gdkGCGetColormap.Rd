\alias{gdkGCGetColormap}
\name{gdkGCGetColormap}
\title{gdkGCGetColormap}
\description{Retrieves the colormap for a given GC, if it exists.
A GC will have a colormap if the drawable for which it was created
has a colormap, or if a colormap was set explicitely with
gdk_gc_set_colormap.}
\usage{gdkGCGetColormap(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkGC}}}}
\value{[\code{\link{GdkColormap}}] the colormap of \code{gc}, or \code{NULL} if \code{gc} doesn't have one.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
