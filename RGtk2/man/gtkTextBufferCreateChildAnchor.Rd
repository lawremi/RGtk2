\alias{gtkTextBufferCreateChildAnchor}
\name{gtkTextBufferCreateChildAnchor}
\title{gtkTextBufferCreateChildAnchor}
\description{This is a convenience function which simply creates a child anchor
with \code{\link{gtkTextChildAnchorNew}} and inserts it into the buffer
with \code{\link{gtkTextBufferInsertChildAnchor}}.}
\usage{gtkTextBufferCreateChildAnchor(object, iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{iter}}{[\verb{\link{GtkTextIter}}]  location in the buffer}
}
\value{[\verb{\link{GtkTextChildAnchor}}]  the created child anchor}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
