\alias{gtkTextBufferGetBounds}
\name{gtkTextBufferGetBounds}
\title{gtkTextBufferGetBounds}
\description{Retrieves the first and last iterators in the buffer, i.e. the
entire buffer lies within the range [\code{start},\code{end}).}
\usage{gtkTextBufferGetBounds(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}} }}
\value{
A list containing the following elements:
\item{\code{start}}{[\code{\link{GtkTextIter}}]  iterator to initialize with first position in the buffer}
\item{\code{end}}{[\code{\link{GtkTextIter}}]  iterator to initialize with the end iterator}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
