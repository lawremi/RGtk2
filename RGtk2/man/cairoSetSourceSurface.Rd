\alias{cairoSetSourceSurface}
\name{cairoSetSourceSurface}
\title{cairoSetSourceSurface}
\description{This is a convenience function for creating a pattern from \code{surface}
and setting it as the source in \code{cr} with \code{\link{cairoSetSource}}.}
\usage{cairoSetSourceSurface(cr, surface, x, y)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a surface to be used to set the source pattern}
\item{\verb{x}}{[numeric]  User-space X coordinate for surface origin}
\item{\verb{y}}{[numeric]  User-space Y coordinate for surface origin}
}
\details{The \code{x} and \code{y} parameters give the user-space coordinate at which
the surface origin should appear. (The surface origin is its
upper-left corner before any transformation has been applied.) The
\code{x} and \code{y} patterns are negated and then set as translation values
in the pattern matrix.
  
Other than the initial translation pattern matrix, as described
above, all other pattern attributes, (such as its extend mode), are
set to the default values as in \code{\link{cairoPatternCreateForSurface}}.
The resulting pattern can be queried with \code{\link{cairoGetSource}} so
that these attributes can be modified if desired, (eg. to create a
repeating pattern with \code{\link{cairoPatternSetExtend}}).  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
