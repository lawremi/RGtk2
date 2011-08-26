\alias{gtkTextIterSetLineOffset}
\name{gtkTextIterSetLineOffset}
\title{gtkTextIterSetLineOffset}
\description{Moves \code{iter} within a line, to a new \emph{character}
(not byte) offset. The given character offset must be less than or
equal to the number of characters in the line; if equal, \code{iter}
moves to the start of the next line. See
\code{\link{gtkTextIterSetLineIndex}} if you have a byte index rather than
a character offset.}
\usage{gtkTextIterSetLineOffset(object, char.on.line)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{char.on.line}}{a character offset relative to the start of \code{iter}'s current line}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
