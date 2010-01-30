\alias{gdkColormapNew}
\name{gdkColormapNew}
\title{gdkColormapNew}
\description{Creates a new colormap for the given visual.}
\usage{gdkColormapNew(visual, allocate)}
\arguments{
\item{\verb{visual}}{[\verb{\link{GdkVisual}}]  a \verb{\link{GdkVisual}}.}
\item{\verb{allocate}}{[logical]  if \code{TRUE}, the newly created colormap will be
a private colormap, and all colors in it will be
allocated for the applications use.}
}
\value{[\verb{\link{GdkColormap}}]  the new \verb{\link{GdkColormap}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
