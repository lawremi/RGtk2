\alias{cairoPatternSetFilter}
\name{cairoPatternSetFilter}
\title{cairoPatternSetFilter}
\description{Sets the filter to be used for resizing when using this pattern.
See \code{\link{CairoFilter}} for details on each filter.}
\usage{cairoPatternSetFilter(pattern, filter)}
\arguments{
\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}
\item{\verb{filter}}{[\code{\link{CairoFilter}}]  a \code{\link{CairoFilter}} describing the filter to use for resizing
the pattern}
}
\details{* Note that you might want to control filtering even when you do not
have an explicit \code{\link{CairoPattern}} object, (for example when using
\code{\link{cairoSetSourceSurface}}). In these cases, it is convenient to
use \code{\link{cairoGetSource}} to get access to the pattern that cairo
creates implicitly. For example:
  \preformatted{
cr$setSourceSurface(image, x, y)
cr$getSource()$setFilter(CairoFilter["nearest"])

}  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
