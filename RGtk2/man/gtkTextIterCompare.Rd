\alias{gtkTextIterCompare}
\name{gtkTextIterCompare}
\title{gtkTextIterCompare}
\description{A \code{qsort()}-style function that returns negative if \code{lhs} is less than
\code{rhs}, positive if \code{lhs} is greater than \code{rhs}, and 0 if they're equal.
Ordering is in character offset order, i.e. the first character in the buffer
is less than the second character in the buffer.}
\usage{gtkTextIterCompare(object, rhs)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{rhs}}{another \code{\link{GtkTextIter}}}
}
\value{[integer] -1 if \code{lhs} is less than \code{rhs}, 1 if \code{lhs} is greater, 0 if they are equal}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
