\alias{gtkTextBufferDelete}
\name{gtkTextBufferDelete}
\title{gtkTextBufferDelete}
\description{Deletes text between \code{start} and \code{end}. The order of \code{start} and \code{end}
is not actually relevant; \code{\link{gtkTextBufferDelete}} will reorder
them. This function actually emits the "delete-range" signal, and
the default handler of that signal deletes the text. Because the
buffer is modified, all outstanding iterators become invalid after
calling this function; however, the \code{start} and \code{end} will be
re-initialized to point to the location where text was deleted.}
\usage{gtkTextBufferDelete(object, start, end)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{start}}{a position in \code{buffer}}
\item{\verb{end}}{another position in \code{buffer}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
