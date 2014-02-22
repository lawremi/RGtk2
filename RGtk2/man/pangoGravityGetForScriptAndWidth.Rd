\alias{pangoGravityGetForScriptAndWidth}
\name{pangoGravityGetForScriptAndWidth}
\title{pangoGravityGetForScriptAndWidth}
\description{Based on the script, East Asian width, base gravity, and hint,
returns actual gravity to use in laying out a single character
or \code{\link{PangoItem}}.}
\usage{pangoGravityGetForScriptAndWidth(script, wide, base.gravity, 
    hint)}
\arguments{
\item{\verb{script}}{[\code{\link{PangoScript}}] \code{\link{PangoScript}} to query}
\item{\verb{wide}}{[logical] \code{TRUE} for wide characters as returned by \code{gUnicharIswide()}}
\item{\verb{base.gravity}}{[\code{\link{PangoGravity}}]  base gravity of the paragraph}
\item{\verb{hint}}{[\code{\link{PangoGravityHint}}]  orientation hint}
}
\details{This function is similar to \code{\link{pangoGravityGetForScript}} except
that this function makes a distinction between narrow/half-width and
wide/full-width characters also.  Wide/full-width characters always
stand \emph{upright}, that is, they always take the base gravity,
whereas narrow/full-width characters are always rotated in vertical
context.
  
If \code{base.gravity} is \code{PANGO_GRAVITY_AUTO}, it is first replaced with the
preferred gravity of \code{script}.  
  Since 1.26}
\value{[\code{\link{PangoGravity}}]  resolved gravity suitable to use for a run of text
with \code{script} and \code{wide}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
