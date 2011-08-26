\alias{gtkTextBufferGetIterAtLineIndex}
\name{gtkTextBufferGetIterAtLineIndex}
\title{gtkTextBufferGetIterAtLineIndex}
\description{Obtains an iterator pointing to \code{byte.index} within the given line.
\code{byte.index} must be the start of a UTF-8 character, and must not be
beyond the end of the line.  Note \emph{bytes}, not
characters; UTF-8 may encode one character as multiple bytes.}
\usage{gtkTextBufferGetIterAtLineIndex(object, line.number, byte.index)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{line.number}}{line number counting from 0}
\item{\verb{byte.index}}{byte index from start of line}
}
\value{
A list containing the following elements:
\item{\verb{iter}}{iterator to initialize}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
