\alias{gtkTextIterSetLine}
\name{gtkTextIterSetLine}
\title{gtkTextIterSetLine}
\description{Moves iterator \code{iter} to the start of the line \code{line.number}.  If
\code{line.number} is negative or larger than the number of lines in the
buffer, moves \code{iter} to the start of the last line in the buffer.}
\usage{gtkTextIterSetLine(object, line.number)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{line.number}}{line number (counted from 0)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
