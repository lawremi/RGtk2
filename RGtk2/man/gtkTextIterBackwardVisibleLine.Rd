\alias{gtkTextIterBackwardVisibleLine}
\name{gtkTextIterBackwardVisibleLine}
\title{gtkTextIterBackwardVisibleLine}
\description{Moves \code{iter} to the start of the previous visible line. Returns \code{TRUE} if
\code{iter} could be moved; i.e. if \code{iter} was at character offset 0, this
function returns \code{FALSE}. Therefore if \code{iter} was already on line 0,
but not at the start of the line, \code{iter} is snapped to the start of
the line and the function returns \code{TRUE}. (Note that this implies that
in a loop calling this function, the line number may not change on
every iteration, if your first iteration is on line 0.)}
\usage{gtkTextIterBackwardVisibleLine(object)}
\arguments{\item{\verb{object}}{an iterator}}
\details{Since 2.8}
\value{[logical] whether \code{iter} moved}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
