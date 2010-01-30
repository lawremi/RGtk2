\alias{gtkTextBufferGetBounds}
\name{gtkTextBufferGetBounds}
\title{gtkTextBufferGetBounds}
\description{Retrieves the first and last iterators in the buffer, i.e. the
entire buffer lies within the range [\code{start},\code{end}).}
\usage{gtkTextBufferGetBounds(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}} }}
\value{
A list containing the following elements:
\item{\verb{start}}{[\verb{\link{GtkTextIter}}]  iterator to initialize with first position in the buffer}
\item{\verb{end}}{[\verb{\link{GtkTextIter}}]  iterator to initialize with the end iterator}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
