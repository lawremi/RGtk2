\alias{gtkTextBufferInsertAtCursor}
\name{gtkTextBufferInsertAtCursor}
\title{gtkTextBufferInsertAtCursor}
\description{Simply calls \code{\link{gtkTextBufferInsert}}, using the current
cursor position as the insertion point.}
\usage{gtkTextBufferInsertAtCursor(object, text, len = -1)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{text}}{[character]  some text in UTF-8 format}
\item{\verb{len}}{[integer]  length of text, in bytes}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
