\alias{gtkTextIterBackwardLines}
\name{gtkTextIterBackwardLines}
\title{gtkTextIterBackwardLines}
\description{Moves \code{count} lines backward, if possible (if \code{count} would move
past the start or end of the buffer, moves to the start or end of
the buffer).  The return value indicates whether the iterator moved
onto a dereferenceable position; if the iterator didn't move, or
moved onto the end iterator, then \code{FALSE} is returned. If \code{count} is 0,
the function does nothing and returns \code{FALSE}. If \code{count} is negative,
moves forward by 0 - \code{count} lines.}
\usage{gtkTextIterBackwardLines(object, count)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{count}}{number of lines to move backward}
}
\value{[logical] whether \code{iter} moved and is dereferenceable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
