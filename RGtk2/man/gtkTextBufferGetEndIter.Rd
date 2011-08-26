\alias{gtkTextBufferGetEndIter}
\name{gtkTextBufferGetEndIter}
\title{gtkTextBufferGetEndIter}
\description{Initializes \code{iter} with the "end iterator," one past the last valid
character in the text buffer. If dereferenced with
\code{\link{gtkTextIterGetChar}}, the end iterator has a character value of
0. The entire buffer lies in the range from the first position in
the buffer (call \code{\link{gtkTextBufferGetStartIter}} to get
character position 0) to the end iterator.}
\usage{gtkTextBufferGetEndIter(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}}
\value{
A list containing the following elements:
\item{\verb{iter}}{iterator to initialize}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
