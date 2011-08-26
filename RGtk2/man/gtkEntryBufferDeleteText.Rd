\alias{gtkEntryBufferDeleteText}
\name{gtkEntryBufferDeleteText}
\title{gtkEntryBufferDeleteText}
\description{Deletes a sequence of characters from the buffer. \code{n.chars} characters are
deleted starting at \code{position}. If \code{n.chars} is negative, then all characters
until the end of the text are deleted.}
\usage{gtkEntryBufferDeleteText(object, position, n.chars)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntryBuffer}}}
\item{\verb{position}}{position at which to delete text}
\item{\verb{n.chars}}{number of characters to delete}
}
\details{If \code{position} or \code{n.chars} are out of bounds, then they are coerced to sane
values.
  
Note that the positions are specified in characters, not bytes.
  Since 2.18}
\value{[numeric] The number of characters deleted.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
