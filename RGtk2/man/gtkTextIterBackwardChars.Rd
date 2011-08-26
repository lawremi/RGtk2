\alias{gtkTextIterBackwardChars}
\name{gtkTextIterBackwardChars}
\title{gtkTextIterBackwardChars}
\description{Moves \code{count} characters backward, if possible (if \code{count} would move
past the start or end of the buffer, moves to the start or end of
the buffer).  The return value indicates whether the iterator moved
onto a dereferenceable position; if the iterator didn't move, or
moved onto the end iterator, then \code{FALSE} is returned. If \code{count} is 0,
the function does nothing and returns \code{FALSE}.}
\usage{gtkTextIterBackwardChars(object, count)}
\arguments{
\item{\verb{object}}{an iterator}
\item{\verb{count}}{number of characters to move}
}
\value{[logical] whether \code{iter} moved and is dereferenceable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
