\alias{gdkOffscreenWindowSetEmbedder}
\name{gdkOffscreenWindowSetEmbedder}
\title{gdkOffscreenWindowSetEmbedder}
\description{Sets \code{window} to be embedded in \code{embedder}.}
\usage{gdkOffscreenWindowSetEmbedder(window, embedder)}
\arguments{
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{embedder}}{the \code{\link{GdkWindow}} that \code{window} gets embedded in}
}
\details{To fully embed an offscreen window, in addition to calling this
function, it is also necessary to handle the \verb{"pick-embedded-child"}
signal on the \code{embedder} and the \verb{"to-embedder"} and
\verb{"from-embedder"} signals on \code{window}.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
