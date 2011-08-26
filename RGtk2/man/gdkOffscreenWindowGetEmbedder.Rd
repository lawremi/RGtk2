\alias{gdkOffscreenWindowGetEmbedder}
\name{gdkOffscreenWindowGetEmbedder}
\title{gdkOffscreenWindowGetEmbedder}
\description{Gets the window that \code{window} is embedded in.}
\usage{gdkOffscreenWindowGetEmbedder(window)}
\arguments{\item{\verb{window}}{a \code{\link{GdkWindow}}}}
\details{Since 2.18}
\value{[\code{\link{GdkWindow}}] the embedding \code{\link{GdkWindow}}, or \code{NULL} if \code{window} is not an
embedded offscreen window}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
