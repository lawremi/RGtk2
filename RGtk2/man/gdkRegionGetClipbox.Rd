\alias{gdkRegionGetClipbox}
\name{gdkRegionGetClipbox}
\title{gdkRegionGetClipbox}
\description{Returns the smallest rectangle which includes the entire \code{\link{GdkRegion}}.}
\usage{gdkRegionGetClipbox(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkRegion}}] a \code{\link{GdkRegion}}.}}
\value{
A list containing the following elements:
\item{\code{rectangle}}{[\code{\link{GdkRectangle}}] returns the smallest rectangle which includes all of \code{region}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
