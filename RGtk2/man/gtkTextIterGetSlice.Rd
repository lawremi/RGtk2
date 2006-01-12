\alias{gtkTextIterGetSlice}
\name{gtkTextIterGetSlice}
\title{gtkTextIterGetSlice}
\description{Returns the text in the given range. A "slice" is a list of
characters encoded in UTF-8 format, including the Unicode "unknown"
character 0xFFFC for iterable non-character elements in the buffer,
such as images.  Because images are encoded in the slice, byte and
character offsets in the returned list will correspond to byte
offsets in the text buffer. Note that 0xFFFC can occur in normal
text as well, so it is not a reliable indicator that a pixbuf or
widget is in the buffer.}
\usage{gtkTextIterGetSlice(object, end)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextIter}}]  iterator at start of a range}
\item{\code{end}}{[\code{\link{GtkTextIter}}]  iterator at end of a range}
}
\value{[character]  slice of text from the buffer}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
