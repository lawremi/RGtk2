\alias{gtkTextIterForwardLine}
\name{gtkTextIterForwardLine}
\title{gtkTextIterForwardLine}
\description{Moves \code{iter} to the start of the next line. If the iter is already on the
last line of the buffer, moves the iter to the end of the current line.
If after the operation, the iter is at the end of the buffer and not
dereferencable, returns \code{FALSE}. Otherwise, returns \code{TRUE}.}
\usage{gtkTextIterForwardLine(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[logical] whether \code{iter} can be dereferenced}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
