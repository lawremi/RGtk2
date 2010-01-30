\alias{gdkVisualGetBestWithBoth}
\name{gdkVisualGetBestWithBoth}
\title{gdkVisualGetBestWithBoth}
\description{Combines \code{\link{gdkVisualGetBestWithDepth}} and \code{\link{gdkVisualGetBestWithType}}.}
\usage{gdkVisualGetBestWithBoth(depth, visual.type)}
\arguments{
\item{\verb{depth}}{[integer]  a bit depth}
\item{\verb{visual.type}}{[\code{\link{GdkVisualType}}]  a visual type}
}
\value{[\verb{\link{GdkVisual}}]  best visual with both \code{depth} and \code{visual.type}, or \code{NULL} if none}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
