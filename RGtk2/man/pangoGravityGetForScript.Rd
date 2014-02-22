\alias{pangoGravityGetForScript}
\name{pangoGravityGetForScript}
\title{pangoGravityGetForScript}
\description{Based on the script, base gravity, and hint, returns actual gravity
to use in laying out a single \code{\link{PangoItem}}.}
\usage{pangoGravityGetForScript(script, base.gravity, hint)}
\arguments{
\item{\verb{script}}{[\code{\link{PangoScript}}] \code{\link{PangoScript}} to query}
\item{\verb{base.gravity}}{[\code{\link{PangoGravity}}]  base gravity of the paragraph}
\item{\verb{hint}}{[\code{\link{PangoGravityHint}}]  orientation hint}
}
\details{If \code{base.gravity} is \code{PANGO_GRAVITY_AUTO}, it is first replaced with the
preferred gravity of \code{script}.  To get the preferred gravity of a script,
pass \code{PANGO_GRAVITY_AUTO} and \code{PANGO_GRAVITY_HINT_STRONG} in.  
  Since 1.16}
\value{[\code{\link{PangoGravity}}]  resolved gravity suitable to use for a run of text
with \code{script}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
