\alias{gtkTextBufferInsertInteractive}
\name{gtkTextBufferInsertInteractive}
\title{gtkTextBufferInsertInteractive}
\description{Like \code{\link{gtkTextBufferInsert}}, but the insertion will not occur if
\code{iter} is at a non-editable location in the buffer. Usually you
want to prevent insertions at ineditable locations if the insertion
results from a user action (is interactive).}
\usage{gtkTextBufferInsertInteractive(object, iter, text, default.editable)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{iter}}{[\verb{\link{GtkTextIter}}]  a position in \code{buffer}}
\item{\verb{text}}{[character]  some UTF-8 text}
\item{\verb{default.editable}}{[logical]  default editability of buffer}
}
\details{\code{default.editable} indicates the editability of text that doesn't
have a tag affecting editability applied to it. Typically the
result of \code{\link{gtkTextViewGetEditable}} is appropriate here.  }
\value{[logical]  whether text was actually inserted}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
