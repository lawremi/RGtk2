\alias{gtkTextIterForwardSentenceEnd}
\name{gtkTextIterForwardSentenceEnd}
\title{gtkTextIterForwardSentenceEnd}
\description{Moves forward to the next sentence end. (If \code{iter} is at the end of
a sentence, moves to the next end of sentence.)  Sentence
boundaries are determined by Pango and should be correct for nearly
any language (if not, the correct fix would be to the Pango text
boundary algorithms).}
\usage{gtkTextIterForwardSentenceEnd(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[logical] \code{TRUE} if \code{iter} moved and is not the end iterator}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
