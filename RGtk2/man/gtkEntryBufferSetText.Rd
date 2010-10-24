\alias{gtkEntryBufferSetText}
\name{gtkEntryBufferSetText}
\title{gtkEntryBufferSetText}
\description{Sets the text in the buffer.}
\usage{gtkEntryBufferSetText(object, chars, n.chars)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntryBuffer}}}
\item{\verb{chars}}{the new text}
\item{\verb{n.chars}}{the number of characters in \code{text}, or -1}
}
\details{This is roughly equivalent to calling \code{\link{gtkEntryBufferDeleteText}}
and \code{\link{gtkEntryBufferInsertText}}.
  
Note that \code{n.chars} is in characters, not in bytes.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
