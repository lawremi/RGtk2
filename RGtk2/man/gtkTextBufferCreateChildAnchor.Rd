\alias{gtkTextBufferCreateChildAnchor}
\name{gtkTextBufferCreateChildAnchor}
\title{gtkTextBufferCreateChildAnchor}
\description{This is a convenience function which simply creates a child anchor
with \code{\link{gtkTextChildAnchorNew}} and inserts it into the buffer
with \code{\link{gtkTextBufferInsertChildAnchor}}.}
\usage{gtkTextBufferCreateChildAnchor(object, iter)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{iter}}{location in the buffer}
}
\value{[\code{\link{GtkTextChildAnchor}}] the created child anchor}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
