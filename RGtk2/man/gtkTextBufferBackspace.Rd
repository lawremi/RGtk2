\alias{gtkTextBufferBackspace}
\name{gtkTextBufferBackspace}
\title{gtkTextBufferBackspace}
\description{Performs the appropriate action as if the user hit the delete
key with the cursor at the position specified by \code{iter}. In the
normal case a single character will be deleted, but when
combining accents are involved, more than one character can
be deleted, and when precomposed character and accent combinations
are involved, less than one character will be deleted.}
\usage{gtkTextBufferBackspace(object, iter, interactive, default.editable)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{iter}}{a position in \code{buffer}}
\item{\verb{interactive}}{whether the deletion is caused by user interaction}
\item{\verb{default.editable}}{whether the buffer is editable by default}
}
\details{Because the buffer is modified, all outstanding iterators become 
invalid after calling this function; however, the \code{iter} will be
re-initialized to point to the location where text was deleted.
  Since 2.6}
\value{[logical] \code{TRUE} if the buffer was modified}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
