\alias{gtkTextBufferInsertWithTagsByName}
\name{gtkTextBufferInsertWithTagsByName}
\title{gtkTextBufferInsertWithTagsByName}
\description{Same as \code{\link{gtkTextBufferInsertWithTags}}, but allows you
to pass in tag names instead of tag objects.}
\usage{gtkTextBufferInsertWithTagsByName(object, iter, text, ...)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{iter}}{[\verb{\link{GtkTextIter}}]  position in \code{buffer}}
\item{\verb{text}}{[character]  UTF-8 text}
\item{\verb{...}}{ more tag names}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
