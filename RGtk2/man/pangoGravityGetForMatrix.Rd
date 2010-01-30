\alias{pangoGravityGetForMatrix}
\name{pangoGravityGetForMatrix}
\title{pangoGravityGetForMatrix}
\description{Finds the gravity that best matches the rotation component
in a \verb{\link{PangoMatrix}}.}
\usage{pangoGravityGetForMatrix(matrix)}
\arguments{\item{\verb{matrix}}{[\verb{\link{PangoMatrix}}]  a \verb{\link{PangoMatrix}}}}
\details{  Since  1.16}
\value{[\code{\link{PangoGravity}}]  the gravity of \code{matrix}, which will never be
\code{PANGO_GRAVITY_AUTO}, or \code{PANGO_GRAVITY_SOUTH} if \code{matrix} is \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
