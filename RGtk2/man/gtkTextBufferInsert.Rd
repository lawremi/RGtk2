\alias{gtkTextBufferInsert}
\name{gtkTextBufferInsert}
\title{gtkTextBufferInsert}
\description{Inserts \code{len} bytes of \code{text} at position \code{iter}.  If \code{len} is -1,
\code{text} must be and will be inserted in its
entirety. Emits the "insert_text" signal; insertion actually occurs
in the default handler for the signal. \code{iter} is invalidated when
insertion occurs (because the buffer contents change), but the
default signal handler revalidates it to point to the end of the
inserted text.}
\usage{gtkTextBufferInsert(object, iter, text, len = -1)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  a position in the buffer}
\item{\code{text}}{[character]  UTF-8 format text to insert}
\item{\code{len}}{[integer]  length of text in bytes, or -1}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
