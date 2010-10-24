\alias{gtkTextIterForwardToEnd}
\name{gtkTextIterForwardToEnd}
\title{gtkTextIterForwardToEnd}
\description{Moves \code{iter} forward to the "end iterator," which points one past the last
valid character in the buffer. \code{\link{gtkTextIterGetChar}} called on the
end iterator returns 0, which is convenient for writing loops.}
\usage{gtkTextIterForwardToEnd(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
