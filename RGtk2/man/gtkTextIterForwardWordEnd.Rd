\alias{gtkTextIterForwardWordEnd}
\name{gtkTextIterForwardWordEnd}
\title{gtkTextIterForwardWordEnd}
\description{Moves forward to the next word end. (If \code{iter} is currently on a
word end, moves forward to the next one after that.) Word breaks
are determined by Pango and should be correct for nearly any
language (if not, the correct fix would be to the Pango word break
algorithms).}
\usage{gtkTextIterForwardWordEnd(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[logical] \code{TRUE} if \code{iter} moved and is not the end iterator}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
