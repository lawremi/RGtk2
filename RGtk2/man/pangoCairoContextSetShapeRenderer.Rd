\alias{pangoCairoContextSetShapeRenderer}
\name{pangoCairoContextSetShapeRenderer}
\title{pangoCairoContextSetShapeRenderer}
\description{Sets callback function for context to use for rendering attributes
of type \code{PANGO_ATTR_SHAPE}.  See \code{\link{PangoCairoShapeRendererFunc}} for
details.}
\usage{pangoCairoContextSetShapeRenderer(object, func, data)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}, from a pangocairo font map}
\item{\verb{func}}{[\code{\link{PangoCairoShapeRendererFunc}}]  Callback function for rendering attributes of type
\code{PANGO_ATTR_SHAPE}, or \code{NULL} to disable shape rendering.}
\item{\verb{data}}{[R object]  User data that will be passed to \code{func}.}
}
\details{  Since 1.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
