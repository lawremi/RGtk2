\alias{gtkTextIterForwardChars}
\name{gtkTextIterForwardChars}
\title{gtkTextIterForwardChars}
\description{Moves \code{count} characters if possible (if \code{count} would move past the
start or end of the buffer, moves to the start or end of the
buffer). The return value indicates whether the new position of
\code{iter} is different from its original position, and dereferenceable
(the last iterator in the buffer is not dereferenceable). If \code{count}
is 0, the function does nothing and returns \code{FALSE}.}
\usage{gtkTextIterForwardChars(object, count)}
\arguments{
\item{\verb{object}}{an iterator}
\item{\verb{count}}{number of characters to move, may be negative}
}
\value{[logical] whether \code{iter} moved and is dereferenceable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
