\alias{gtkTextBufferGetIterAtOffset}
\name{gtkTextBufferGetIterAtOffset}
\title{gtkTextBufferGetIterAtOffset}
\description{Initializes \code{iter} to a position \code{char.offset} chars from the start
of the entire buffer. If \code{char.offset} is -1 or greater than the number
of characters in the buffer, \code{iter} is initialized to the end iterator,
the iterator one past the last valid character in the buffer.}
\usage{gtkTextBufferGetIterAtOffset(object, char.offset)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}} }
\item{\verb{char.offset}}{[integer]  char offset from start of buffer, counting from 0, or -1}
}
\value{
A list containing the following elements:
\item{\verb{iter}}{[\verb{\link{GtkTextIter}}]  iterator to initialize}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
