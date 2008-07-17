\alias{pangoCairoContextGetShapeRenderer}
\name{pangoCairoContextGetShapeRenderer}
\title{pangoCairoContextGetShapeRenderer}
\description{Sets callback function for context to use for rendering attributes
of type \code{PANGO_ATTR_SHAPE}.  See \code{\link{PangoCairoShapeRendererFunc}} for
details.}
\usage{pangoCairoContextGetShapeRenderer(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}, from \code{\link{pangoCairoFontMapCreateContext}}}}
\details{Retrieves callback function and associated user data for rendering
attributes of type \code{PANGO_ATTR_SHAPE} as set by
\code{\link{pangoCairoContextSetShapeRenderer}}, if any.  

  Since  1.18}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{PangoCairoShapeRendererFunc}}]  the shape rendering callback previously set on the context, or \code{NULL}
  if no shape rendering callback have been set.}
\item{\code{data}}{[R object]  Pointer to \code{R object} to return user data}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
