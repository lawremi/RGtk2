\alias{cairoStroke}
\name{cairoStroke}
\title{cairoStroke}
\description{A drawing operator that strokes the current path according to the
current line width, line join, line cap, and dash settings. After
cairo_stroke, the current path will be cleared from the cairo
context. See \code{\link{cairoSetLineWidth}}, \code{\link{cairoSetLineJoin}},
\code{\link{cairoSetLineCap}}, \code{\link{cairoSetDash}}, and
\code{\link{cairoStrokePreserve}}.}
\usage{cairoStroke(cr)}
\arguments{\item{\code{cr}}{[\code{\link{cairo_t}}]  a cairo context}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
