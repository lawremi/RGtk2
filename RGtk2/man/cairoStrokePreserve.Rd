\alias{cairoStrokePreserve}
\name{cairoStrokePreserve}
\title{cairoStrokePreserve}
\description{A drawing operator that strokes the current path according to the
current line width, line join, line cap, and dash settings. Unlike
\code{\link{cairoStroke}}, \code{\link{cairoStrokePreserve}} preserves the path within the
cairo context.}
\usage{cairoStrokePreserve(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{See \code{\link{cairoSetLineWidth}}, \code{\link{cairoSetLineJoin}},
\code{\link{cairoSetLineCap}}, \code{\link{cairoSetDash}}, and
\code{\link{cairoStrokePreserve}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
