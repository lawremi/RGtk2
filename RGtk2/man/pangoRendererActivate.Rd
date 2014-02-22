\alias{pangoRendererActivate}
\name{pangoRendererActivate}
\title{pangoRendererActivate}
\description{Does initial setup before rendering operations on \code{renderer}.
\code{\link{pangoRendererDeactivate}} should be called when done drawing.
Calls such as \code{\link{pangoRendererDrawLayout}} automatically
activate the layout before drawing on it. Calls to
\code{\link{pangoRendererActivate}} and \code{\link{pangoRendererDeactivate}} can
be nested and the renderer will only be initialized and
deinitialized once.}
\usage{pangoRendererActivate(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}}
\details{  Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
