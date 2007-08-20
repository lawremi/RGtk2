\alias{gtkTextBufferInsertInteractive}
\name{gtkTextBufferInsertInteractive}
\title{gtkTextBufferInsertInteractive}
\description{Like \code{\link{gtkTextBufferInsert}}, but the insertion will not occur if
\code{iter} is at a non-editable location in the buffer. Usually you
want to prevent insertions at ineditable locations if the insertion
results from a user action (is interactive).}
\usage{gtkTextBufferInsertInteractive(object, iter, text, default.editable)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  a position in \code{buffer}}
\item{\code{text}}{[character]  some UTF-8 text}
\item{\code{default.editable}}{[logical]  default editability of buffer}
}
\details{\code{default.editable} indicates the editability of text that doesn't
have a tag affecting editability applied to it. Typically the
result of \code{\link{gtkTextViewGetEditable}} is appropriate here.  }
\value{[logical]  whether text was actually inserted}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
