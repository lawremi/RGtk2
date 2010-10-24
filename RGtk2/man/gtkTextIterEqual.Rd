\alias{gtkTextIterEqual}
\name{gtkTextIterEqual}
\title{gtkTextIterEqual}
\description{Tests whether two iterators are equal, using the fastest possible
mechanism. This function is very fast; you can expect it to perform
better than e.g. getting the character offset for each iterator and
comparing the offsets yourself. Also, it's a bit faster than
\code{\link{gtkTextIterCompare}}.}
\usage{gtkTextIterEqual(object, rhs)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{rhs}}{another \code{\link{GtkTextIter}}}
}
\value{[logical] \code{TRUE} if the iterators point to the same place in the buffer}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
