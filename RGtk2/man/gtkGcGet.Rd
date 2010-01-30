\alias{gtkGcGet}
\name{gtkGcGet}
\title{gtkGcGet}
\description{Gets a \verb{\link{GdkGC}} with the given depth, colormap and \verb{\link{GdkGCValues}}.
If a \verb{\link{GdkGC}} with the given properties already exists then it is returned,
otherwise a new \verb{\link{GdkGC}} is created.
The returned \verb{\link{GdkGC}} should be released with \code{\link{gtkGcRelease}} when it is no
longer needed.}
\usage{gtkGcGet(depth, colormap, values)}
\arguments{
\item{\verb{depth}}{[integer] the depth of the \verb{\link{GdkGC}} to create.}
\item{\verb{colormap}}{[\verb{\link{GdkColormap}}] the \verb{\link{GdkColormap}} (FIXME: I don't know why this is needed).}
\item{\verb{values}}{[\verb{\link{GdkGCValues}}] a \verb{\link{GdkGCValues}} struct containing settings for the \verb{\link{GdkGC}}.}
}
\value{[\verb{\link{GdkGC}}] a \verb{\link{GdkGC}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
