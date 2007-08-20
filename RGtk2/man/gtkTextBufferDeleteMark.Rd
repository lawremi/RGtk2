\alias{gtkTextBufferDeleteMark}
\name{gtkTextBufferDeleteMark}
\title{gtkTextBufferDeleteMark}
\description{Deletes \code{mark}, so that it's no longer located anywhere in the
buffer. Removes the reference the buffer holds to the mark, most operations on \code{mark} become
invalid, until it gets added to a buffer again with 
\code{\link{gtkTextBufferAddMark}}. Use \code{\link{gtkTextMarkGetDeleted}} to  
find out if a mark has been removed from its buffer.
The "mark\_deleted" signal will be emitted as notification after 
the mark is deleted.}
\usage{gtkTextBufferDeleteMark(object, mark)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{mark}}{[\code{\link{GtkTextMark}}]  a \code{\link{GtkTextMark}} in \code{buffer}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
