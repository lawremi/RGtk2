\alias{pangoContextGetGravity}
\name{pangoContextGetGravity}
\title{pangoContextGetGravity}
\description{Retrieves the gravity for the context. This is similar to
\code{\link{pangoContextGetBaseGravity}}, except for when the base gravity
is \code{PANGO_GRAVITY_AUTO} for which \code{\link{pangoGravityGetForMatrix}} is used
to return the gravity from the current context matrix.}
\usage{pangoContextGetGravity(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}}}
\details{  Since 1.16}
\value{[\code{\link{PangoGravity}}]  the resolved gravity for the context.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
