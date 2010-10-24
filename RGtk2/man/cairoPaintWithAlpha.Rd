\alias{cairoPaintWithAlpha}
\name{cairoPaintWithAlpha}
\title{cairoPaintWithAlpha}
\description{A drawing operator that paints the current source everywhere within
the current clip region using a mask of constant alpha value
\code{alpha}. The effect is similar to \code{\link{cairoPaint}}, but the drawing
is faded out using the alpha value.}
\usage{cairoPaintWithAlpha(cr, alpha)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{alpha}}{[numeric]  alpha value, between 0 (transparent) and 1 (opaque)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
