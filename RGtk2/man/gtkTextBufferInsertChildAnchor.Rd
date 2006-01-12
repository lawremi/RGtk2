\alias{gtkTextBufferInsertChildAnchor}
\name{gtkTextBufferInsertChildAnchor}
\title{gtkTextBufferInsertChildAnchor}
\description{Inserts a child widget anchor into the text buffer at \code{iter}. The
anchor will be counted as one character in character counts, and
when obtaining the buffer contents as a string, will be represented
by the Unicode "object replacement character" 0xFFFC. Note that the
"slice" variants for obtaining portions of the buffer as a string
include this character for child anchors, but the "text" variants do
not. e.g. see \code{\link{gtkTextBufferGetSlice}} and
\code{\link{gtkTextBufferGetText}}. Consider
\code{\link{gtkTextBufferCreateChildAnchor}} as a more convenient
alternative to this function. The buffer will add a reference to
the anchor, so you can unref it after insertion.}
\usage{gtkTextBufferInsertChildAnchor(object, iter, anchor)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  location to insert the anchor}
\item{\code{anchor}}{[\code{\link{GtkTextChildAnchor}}]  a \code{\link{GtkTextChildAnchor}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
