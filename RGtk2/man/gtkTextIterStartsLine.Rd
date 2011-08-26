\alias{gtkTextIterStartsLine}
\name{gtkTextIterStartsLine}
\title{gtkTextIterStartsLine}
\description{Returns \code{TRUE} if \code{iter} begins a paragraph,
i.e. if \code{\link{gtkTextIterGetLineOffset}} would return 0.
However this function is potentially more efficient than
\code{\link{gtkTextIterGetLineOffset}} because it doesn't have to compute
the offset, it just has to see whether it's 0.}
\usage{gtkTextIterStartsLine(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[logical] whether \code{iter} begins a line}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
