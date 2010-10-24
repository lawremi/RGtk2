\alias{gtkTextIterStartsSentence}
\name{gtkTextIterStartsSentence}
\title{gtkTextIterStartsSentence}
\description{Determines whether \code{iter} begins a sentence.  Sentence boundaries are
determined by Pango and should be correct for nearly any language
(if not, the correct fix would be to the Pango text boundary
algorithms).}
\usage{gtkTextIterStartsSentence(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[logical] \code{TRUE} if \code{iter} is at the start of a sentence.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
