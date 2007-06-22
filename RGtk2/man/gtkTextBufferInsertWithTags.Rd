\alias{gtkTextBufferInsertWithTags}
\name{gtkTextBufferInsertWithTags}
\title{gtkTextBufferInsertWithTags}
\description{Inserts \code{text} into \code{buffer} at \code{iter}, applying the list of tags to
the newly-inserted text. The last tag specified must be NULL to
terminate the list. Equivalent to calling \code{\link{gtkTextBufferInsert}},
then \code{\link{gtkTextBufferApplyTag}} on the inserted text;
\code{\link{gtkTextBufferInsertWithTags}} is just a convenience function.}
\usage{gtkTextBufferInsertWithTags(object, iter, text, ...)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  an iterator in \code{buffer}}
\item{\code{text}}{[character]  UTF-8 text}
\item{\code{...}}{ list of tags to apply}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
