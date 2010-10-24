\alias{gtkTextBufferDeleteMark}
\name{gtkTextBufferDeleteMark}
\title{gtkTextBufferDeleteMark}
\description{Deletes \code{mark}, so that it's no longer located anywhere in the
buffer. Removes the reference the buffer holds to the mark, it will be freed. Even
if the mark isn't freed, most operations on \code{mark} become
invalid, until it gets added to a buffer again with 
\code{\link{gtkTextBufferAddMark}}. Use \code{\link{gtkTextMarkGetDeleted}} to  
find out if a mark has been removed from its buffer.
The "mark-deleted" signal will be emitted as notification after 
the mark is deleted.}
\usage{gtkTextBufferDeleteMark(object, mark)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{mark}}{a \code{\link{GtkTextMark}} in \code{buffer}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
