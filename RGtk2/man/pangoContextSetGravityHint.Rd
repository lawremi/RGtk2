\alias{pangoContextSetGravityHint}
\name{pangoContextSetGravityHint}
\title{pangoContextSetGravityHint}
\description{Sets the gravity hint for the context.}
\usage{pangoContextSetGravityHint(object, hint)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}}
\item{\verb{hint}}{[\code{\link{PangoGravityHint}}]  the new gravity hint}
}
\details{The gravity hint is used in laying vertical text out, and is only relevant
if gravity of the context as returned by \code{\link{pangoContextGetGravity}}
is set \code{PANGO_GRAVITY_EAST} or \code{PANGO_GRAVITY_WEST}.  
  Since 1.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
