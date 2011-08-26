\alias{gdkVisualGetBestWithBoth}
\name{gdkVisualGetBestWithBoth}
\title{gdkVisualGetBestWithBoth}
\description{Combines \code{\link{gdkVisualGetBestWithDepth}} and \code{\link{gdkVisualGetBestWithType}}.}
\usage{gdkVisualGetBestWithBoth(depth, visual.type)}
\arguments{
\item{\verb{depth}}{a bit depth}
\item{\verb{visual.type}}{a visual type}
}
\value{[\code{\link{GdkVisual}}] best visual with both \code{depth} and
\code{visual.type}, or \code{NULL} if none. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
