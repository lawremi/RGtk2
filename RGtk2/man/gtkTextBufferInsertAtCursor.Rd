\alias{gtkTextBufferInsertAtCursor}
\name{gtkTextBufferInsertAtCursor}
\title{gtkTextBufferInsertAtCursor}
\description{Simply calls \code{\link{gtkTextBufferInsert}}, using the current
cursor position as the insertion point.}
\usage{gtkTextBufferInsertAtCursor(object, text, len = -1)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{text}}{[character]  some text in UTF-8 format}
\item{\code{len}}{[integer]  length of text, in bytes}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
