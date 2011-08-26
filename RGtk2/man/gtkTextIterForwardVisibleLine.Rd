\alias{gtkTextIterForwardVisibleLine}
\name{gtkTextIterForwardVisibleLine}
\title{gtkTextIterForwardVisibleLine}
\description{Moves \code{iter} to the start of the next visible line. Returns \code{TRUE} if there
was a next line to move to, and \code{FALSE} if \code{iter} was simply moved to
the end of the buffer and is now not dereferenceable, or if \code{iter} was
already at the end of the buffer.}
\usage{gtkTextIterForwardVisibleLine(object)}
\arguments{\item{\verb{object}}{an iterator}}
\details{Since 2.8}
\value{[logical] whether \code{iter} can be dereferenced}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
