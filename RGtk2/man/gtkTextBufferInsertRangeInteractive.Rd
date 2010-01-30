\alias{gtkTextBufferInsertRangeInteractive}
\name{gtkTextBufferInsertRangeInteractive}
\title{gtkTextBufferInsertRangeInteractive}
\description{Same as \code{\link{gtkTextBufferInsertRange}}, but does nothing if the
insertion point isn't editable. The \code{default.editable} parameter
indicates whether the text is editable at \code{iter} if no tags
enclosing \code{iter} affect editability. Typically the result of
\code{\link{gtkTextViewGetEditable}} is appropriate here.}
\usage{gtkTextBufferInsertRangeInteractive(object, iter, start, end, default.editable)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{iter}}{[\verb{\link{GtkTextIter}}]  a position in \code{buffer}}
\item{\verb{start}}{[\verb{\link{GtkTextIter}}]  a position in a \verb{\link{GtkTextBuffer}}}
\item{\verb{end}}{[\verb{\link{GtkTextIter}}]  another position in the same buffer as \code{start}}
\item{\verb{default.editable}}{[logical]  default editability of the buffer}
}
\value{[logical]  whether an insertion was possible at \code{iter}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
