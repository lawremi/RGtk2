\alias{gtkTextBufferDeleteMark}
\name{gtkTextBufferDeleteMark}
\title{gtkTextBufferDeleteMark}
\description{Deletes \code{mark}, so that it's no longer located anywhere in the
buffer. There is no way to undelete a
mark. \code{\link{gtkTextMarkGetDeleted}} will return TRUE after this
function has been called on a mark; \code{\link{gtkTextMarkGetDeleted}}
indicates that a mark no longer belongs to a buffer. The "mark\_deleted"
signal will be emitted as notification after the mark is deleted.}
\usage{gtkTextBufferDeleteMark(object, mark)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{mark}}{[\code{\link{GtkTextMark}}]  a \code{\link{GtkTextMark}} in \code{buffer}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
