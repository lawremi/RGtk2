\alias{gtkTextIterInsideWord}
\name{gtkTextIterInsideWord}
\title{gtkTextIterInsideWord}
\description{Determines whether \code{iter} is inside a natural-language word (as
opposed to say inside some whitespace).  Word breaks are determined
by Pango and should be correct for nearly any language (if not, the
correct fix would be to the Pango word break algorithms).}
\usage{gtkTextIterInsideWord(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[logical] \code{TRUE} if \code{iter} is inside a word}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
