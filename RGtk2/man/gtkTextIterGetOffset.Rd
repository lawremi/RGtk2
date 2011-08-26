\alias{gtkTextIterGetOffset}
\name{gtkTextIterGetOffset}
\title{gtkTextIterGetOffset}
\description{Returns the character offset of an iterator.
Each character in a \code{\link{GtkTextBuffer}} has an offset,
starting with 0 for the first character in the buffer.
Use \code{\link{gtkTextBufferGetIterAtOffset}} to convert an
offset back into an iterator.}
\usage{gtkTextIterGetOffset(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[integer] a character offset}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
