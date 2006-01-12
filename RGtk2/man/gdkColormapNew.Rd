\alias{gdkColormapNew}
\name{gdkColormapNew}
\title{gdkColormapNew}
\description{Creates a new colormap for the given visual.}
\usage{gdkColormapNew(visual, allocate)}
\arguments{
\item{\code{visual}}{[\code{\link{GdkVisual}}]  a \code{\link{GdkVisual}}.}
\item{\code{allocate}}{[logical]  if \code{TRUE}, the newly created colormap will be
a private colormap, and all colors in it will be
allocated for the applications use.}
}
\value{[\code{\link{GdkColormap}}]  the new \code{\link{GdkColormap}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
