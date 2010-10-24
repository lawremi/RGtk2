\alias{gtkTextIterInsideSentence}
\name{gtkTextIterInsideSentence}
\title{gtkTextIterInsideSentence}
\description{Determines whether \code{iter} is inside a sentence (as opposed to in
between two sentences, e.g. after a period and before the first
letter of the next sentence).  Sentence boundaries are determined
by Pango and should be correct for nearly any language (if not, the
correct fix would be to the Pango text boundary algorithms).}
\usage{gtkTextIterInsideSentence(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[logical] \code{TRUE} if \code{iter} is inside a sentence.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
