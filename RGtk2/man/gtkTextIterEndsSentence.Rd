\alias{gtkTextIterEndsSentence}
\name{gtkTextIterEndsSentence}
\title{gtkTextIterEndsSentence}
\description{Determines whether \code{iter} ends a sentence.  Sentence boundaries are
determined by Pango and should be correct for nearly any language
(if not, the correct fix would be to the Pango text boundary
algorithms).}
\usage{gtkTextIterEndsSentence(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[logical] \code{TRUE} if \code{iter} is at the end of a sentence.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
