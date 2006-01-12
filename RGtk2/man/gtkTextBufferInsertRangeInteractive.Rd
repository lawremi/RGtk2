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
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  a position in \code{buffer}}
\item{\code{start}}{[\code{\link{GtkTextIter}}]  a position in a \code{\link{GtkTextBuffer}}}
\item{\code{end}}{[\code{\link{GtkTextIter}}]  another position in the same buffer as \code{start}}
\item{\code{default.editable}}{[logical]  default editability of the buffer}
}
\value{[logical]  whether an insertion was possible at \code{iter}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
