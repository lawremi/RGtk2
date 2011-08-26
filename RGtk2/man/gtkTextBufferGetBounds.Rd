\alias{gtkTextBufferGetBounds}
\name{gtkTextBufferGetBounds}
\title{gtkTextBufferGetBounds}
\description{Retrieves the first and last iterators in the buffer, i.e. the
entire buffer lies within the range [\code{start},\code{end}).}
\usage{gtkTextBufferGetBounds(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}}
\value{
A list containing the following elements:
\item{\verb{start}}{iterator to initialize with first position in the buffer}
\item{\verb{end}}{iterator to initialize with the end iterator}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
