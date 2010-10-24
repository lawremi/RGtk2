\alias{gtkTextIterForwardToLineEnd}
\name{gtkTextIterForwardToLineEnd}
\title{gtkTextIterForwardToLineEnd}
\description{Moves the iterator to point to the paragraph delimiter characters,
which will be either a newline, a carriage return, a carriage
return/newline in sequence, or the Unicode paragraph separator
character. If the iterator is already at the paragraph delimiter
characters, moves to the paragraph delimiter characters for the
next line. If \code{iter} is on the last line in the buffer, which does
not end in paragraph delimiters, moves to the end iterator (end of
the last line), and returns \code{FALSE}.}
\usage{gtkTextIterForwardToLineEnd(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[logical] \code{TRUE} if we moved and the new location is not the end iterator}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
