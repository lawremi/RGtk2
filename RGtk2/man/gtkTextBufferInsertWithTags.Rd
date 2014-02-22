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
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{iter}}{an iterator in \code{buffer}}
\item{\verb{text}}{UTF-8 text}
\item{\verb{...}}{\emph{undocumented
}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
