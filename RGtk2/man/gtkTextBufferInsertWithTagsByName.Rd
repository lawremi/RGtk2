\alias{gtkTextBufferInsertWithTagsByName}
\name{gtkTextBufferInsertWithTagsByName}
\title{gtkTextBufferInsertWithTagsByName}
\description{Same as \code{\link{gtkTextBufferInsertWithTags}}, but allows you
to pass in tag names instead of tag objects.}
\usage{gtkTextBufferInsertWithTagsByName(object, iter, text, ...)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  position in \code{buffer}}
\item{\code{text}}{[character]  UTF-8 text}
\item{\code{...}}{ more tag names}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
