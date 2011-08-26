\alias{gtkTextBufferGetIterAtOffset}
\name{gtkTextBufferGetIterAtOffset}
\title{gtkTextBufferGetIterAtOffset}
\description{Initializes \code{iter} to a position \code{char.offset} chars from the start
of the entire buffer. If \code{char.offset} is -1 or greater than the number
of characters in the buffer, \code{iter} is initialized to the end iterator,
the iterator one past the last valid character in the buffer.}
\usage{gtkTextBufferGetIterAtOffset(object, char.offset)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{char.offset}}{char offset from start of buffer, counting from 0, or -1}
}
\value{
A list containing the following elements:
\item{\verb{iter}}{iterator to initialize}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
