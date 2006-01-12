\alias{gtkGcGet}
\name{gtkGcGet}
\title{gtkGcGet}
\description{Gets a \code{\link{GdkGC}} with the given depth, colormap and \code{\link{GdkGCValues}}.
If a \code{\link{GdkGC}} with the given properties already exists then it is returned,
otherwise a new \code{\link{GdkGC}} is created.
The returned \code{\link{GdkGC}} should be released with \code{\link{gtkGcRelease}} when it is no
longer needed.}
\usage{gtkGcGet(depth, colormap, values)}
\arguments{
\item{\code{depth}}{[integer] the depth of the \code{\link{GdkGC}} to create.}
\item{\code{colormap}}{[\code{\link{GdkColormap}}] the \code{\link{GdkColormap}} (FIXME: I don't know why this is needed).}
\item{\code{values}}{[\code{\link{GdkGCValues}}] a \code{\link{GdkGCValues}} struct containing settings for the \code{\link{GdkGC}}.}
}
\value{[\code{\link{GdkGC}}] a \code{\link{GdkGC}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
