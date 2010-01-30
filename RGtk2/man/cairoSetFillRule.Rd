\alias{cairoSetFillRule}
\name{cairoSetFillRule}
\title{cairoSetFillRule}
\description{Set the current fill rule within the cairo context. The fill rule
is used to determine which regions are inside or outside a complex
(potentially self-intersecting) path. The current fill rule affects
both \code{\link{cairoFill}} and \code{\link{cairoClip}}. See \verb{\link{CairoFillRule}} for details
on the semantics of each available fill rule.}
\usage{cairoSetFillRule(cr, fill.rule)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a \verb{\link{Cairo}}}
\item{\verb{fill.rule}}{[\verb{\link{CairoFillRule}}]  a fill rule, specified as a \verb{\link{CairoFillRule}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
