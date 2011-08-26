\alias{gtkTextBufferGetSlice}
\name{gtkTextBufferGetSlice}
\title{gtkTextBufferGetSlice}
\description{Returns the text in the range [\code{start},\code{end}). Excludes undisplayed
text (text marked with tags that set the invisibility attribute) if
\code{include.hidden.chars} is \code{FALSE}. The returned string includes a
0xFFFC character whenever the buffer contains
embedded images, so byte and character indexes into
the returned string \emph{do} correspond to byte
and character indexes into the buffer. Contrast with
\code{\link{gtkTextBufferGetText}}. Note that 0xFFFC can occur in normal
text as well, so it is not a reliable indicator that a pixbuf or
widget is in the buffer.}
\usage{gtkTextBufferGetSlice(object, start, end, include.hidden.chars = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{start}}{start of a range}
\item{\verb{end}}{end of a range}
\item{\verb{include.hidden.chars}}{whether to include invisible text}
}
\value{[character] an allocated UTF-8 string}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
