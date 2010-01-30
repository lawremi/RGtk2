\alias{cairoPatternSetFilter}
\name{cairoPatternSetFilter}
\title{cairoPatternSetFilter}
\description{Sets the filter to be used for resizing when using this pattern.
See \verb{\link{CairoFilter}} for details on each filter.}
\usage{cairoPatternSetFilter(pattern, filter)}
\arguments{
\item{\verb{pattern}}{[\verb{\link{CairoPattern}}]  a \verb{\link{CairoPattern}}}
\item{\verb{filter}}{[\verb{\link{CairoFilter}}]  a \verb{\link{CairoFilter}} describing the filter to use for resizing
the pattern}
}
\details{* Note that you might want to control filtering even when you do not
have an explicit \verb{\link{CairoPattern}} object, (for example when using
\code{\link{cairoSetSourceSurface}}). In these cases, it is convenient to
use \code{\link{cairoGetSource}} to get access to the pattern that cairo
creates implicitly. For example:
  \preformatted{
cr$setSourceSurface(image, x, y)
cr$getSource()$setFilter("nearest")
}  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
