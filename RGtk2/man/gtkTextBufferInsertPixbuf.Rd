\alias{gtkTextBufferInsertPixbuf}
\name{gtkTextBufferInsertPixbuf}
\title{gtkTextBufferInsertPixbuf}
\description{Inserts an image into the text buffer at \code{iter}. The image will be
counted as one character in character counts, and when obtaining
the buffer contents as a string, will be represented by the Unicode
"object replacement character" 0xFFFC. Note that the "slice"
variants for obtaining portions of the buffer as a string include
this character for pixbufs, but the "text" variants do
not. e.g. see \code{\link{gtkTextBufferGetSlice}} and
\code{\link{gtkTextBufferGetText}}.}
\usage{gtkTextBufferInsertPixbuf(object, iter, pixbuf)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{iter}}{[\verb{\link{GtkTextIter}}]  location to insert the pixbuf}
\item{\verb{pixbuf}}{[\verb{\link{GdkPixbuf}}]  a \verb{\link{GdkPixbuf}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
