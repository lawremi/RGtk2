\alias{cairoPatternSetExtend}
\name{cairoPatternSetExtend}
\title{cairoPatternSetExtend}
\description{Sets the mode to be used for drawing outside the area of a pattern.
See \code{\link{CairoExtend}} for details on the semantics of each extend
strategy.}
\usage{cairoPatternSetExtend(pattern, extend)}
\arguments{
\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}
\item{\verb{extend}}{[\code{\link{CairoExtend}}]  a \code{\link{CairoExtend}} describing how the area outside of the
pattern will be drawn}
}
\details{The default extend mode is \code{CAIRO_EXTEND_NONE} for surface patterns
and \code{CAIRO_EXTEND_PAD} for gradient patterns.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
