\alias{gtkTextIterStartsWord}
\name{gtkTextIterStartsWord}
\title{gtkTextIterStartsWord}
\description{Determines whether \code{iter} begins a natural-language word.  Word
breaks are determined by Pango and should be correct for nearly any
language (if not, the correct fix would be to the Pango word break
algorithms).}
\usage{gtkTextIterStartsWord(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[logical] \code{TRUE} if \code{iter} is at the start of a word}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
