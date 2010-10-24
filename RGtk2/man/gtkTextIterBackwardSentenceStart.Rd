\alias{gtkTextIterBackwardSentenceStart}
\name{gtkTextIterBackwardSentenceStart}
\title{gtkTextIterBackwardSentenceStart}
\description{Moves backward to the previous sentence start; if \code{iter} is already at
the start of a sentence, moves backward to the next one.  Sentence
boundaries are determined by Pango and should be correct for nearly
any language (if not, the correct fix would be to the Pango text
boundary algorithms).}
\usage{gtkTextIterBackwardSentenceStart(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[logical] \code{TRUE} if \code{iter} moved and is not the end iterator}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
