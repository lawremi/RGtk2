\alias{gtkTextBufferGetIterAtOffset}
\name{gtkTextBufferGetIterAtOffset}
\title{gtkTextBufferGetIterAtOffset}
\description{Initializes \code{iter} to a position \code{char.offset} chars from the start
of the entire buffer. If \code{char.offset} is -1 or greater than the number
of characters in the buffer, \code{iter} is initialized to the end iterator,
the iterator one past the last valid character in the buffer.}
\usage{gtkTextBufferGetIterAtOffset(object, char.offset)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}} }
\item{\code{char.offset}}{[integer]  char offset from start of buffer, counting from 0, or -1}
}
\value{
A list containing the following elements:
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  iterator to initialize}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
