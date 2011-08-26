\alias{gtkTextIterBackwardChar}
\name{gtkTextIterBackwardChar}
\title{gtkTextIterBackwardChar}
\description{Moves backward by one character offset. Returns \code{TRUE} if movement
was possible; if \code{iter} was the first in the buffer (character
offset 0), \code{\link{gtkTextIterBackwardChar}} returns \code{FALSE} for convenience when
writing loops.}
\usage{gtkTextIterBackwardChar(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[logical] whether movement was possible}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
