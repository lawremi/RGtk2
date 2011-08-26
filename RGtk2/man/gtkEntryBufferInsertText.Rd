\alias{gtkEntryBufferInsertText}
\name{gtkEntryBufferInsertText}
\title{gtkEntryBufferInsertText}
\description{Inserts \code{n.chars} characters of \code{chars} into the contents of the
buffer, at position \code{position}.}
\usage{gtkEntryBufferInsertText(object, position, chars, n.chars)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntryBuffer}}}
\item{\verb{position}}{the position at which to insert text.}
\item{\verb{chars}}{the text to insert into the buffer.}
\item{\verb{n.chars}}{the length of the text in characters, or -1}
}
\details{If \code{n.chars} is negative, then characters from chars will be inserted
until a null-terminator is found. If \code{position} or \code{n.chars} are out of
bounds, or the maximum buffer text length is exceeded, then they are
coerced to sane values.
  
Note that the position and length are in characters, not in bytes.
  Since 2.18}
\value{[numeric] The number of characters actually inserted.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
