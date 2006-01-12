\alias{gdkVisualGetBestWithBoth}
\name{gdkVisualGetBestWithBoth}
\title{gdkVisualGetBestWithBoth}
\description{Combines \code{\link{gdkVisualGetBestWithDepth}} and \code{\link{gdkVisualGetBestWithType}}.}
\usage{gdkVisualGetBestWithBoth(depth, visual.type)}
\arguments{
\item{\code{depth}}{[integer]  a bit depth}
\item{\code{visual.type}}{[\code{\link{GdkVisualType}}]  a visual type}
}
\value{[\code{\link{GdkVisual}}]  best visual with both \code{depth} and \code{visual.type}, or \code{NULL} if none}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
