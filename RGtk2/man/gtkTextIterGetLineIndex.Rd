\alias{gtkTextIterGetLineIndex}
\name{gtkTextIterGetLineIndex}
\title{gtkTextIterGetLineIndex}
\description{Returns the byte index of the iterator, counting
from the start of a line.
Remember that \code{\link{GtkTextBuffer}} encodes text in
UTF-8, and that characters can require a variable
number of bytes to represent.}
\usage{gtkTextIterGetLineIndex(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkTextIter}}]  an iterator}}
\value{[integer]  distance from start of line, in bytes}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
