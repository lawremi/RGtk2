\alias{cairoSetFillRule}
\name{cairoSetFillRule}
\title{cairoSetFillRule}
\description{Set the current fill rule within the cairo context. The fill rule
is used to determine which regions are inside or outside a complex
(potentially self-intersecting) path. The current fill rule affects
both cairo_fill and cairo_clip. See \code{\link{cairo_fill_rule_t}} for details
on the semantics of each available fill rule.}
\usage{cairoSetFillRule(cr, fill.rule)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{cairo_t}}}
\item{\code{fill.rule}}{[\code{\link{cairo_fill_rule_t}}]  a fill rule, specified as a \code{\link{cairo_fill_rule_t}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
