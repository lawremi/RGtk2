\alias{gtkTextIterIsEnd}
\name{gtkTextIterIsEnd}
\title{gtkTextIterIsEnd}
\description{Returns \code{TRUE} if \code{iter} is the end iterator, i.e. one past the last
dereferenceable iterator in the buffer. \code{\link{gtkTextIterIsEnd}} is
the most efficient way to check whether an iterator is the end
iterator.}
\usage{gtkTextIterIsEnd(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[logical] whether \code{iter} is the end iterator}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
