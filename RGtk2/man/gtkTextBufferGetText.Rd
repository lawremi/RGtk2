\alias{gtkTextBufferGetText}
\name{gtkTextBufferGetText}
\title{gtkTextBufferGetText}
\description{Returns the text in the range [\code{start},\code{end}). Excludes undisplayed
text (text marked with tags that set the invisibility attribute) if
\code{include.hidden.chars} is \code{FALSE}. Does not include characters
representing embedded images, so byte and character indexes into
the returned string do \emph{not} correspond to byte
and character indexes into the buffer. Contrast with
\code{\link{gtkTextBufferGetSlice}}.}
\usage{gtkTextBufferGetText(object, start, end, include.hidden.chars = TRUE)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{start}}{[\verb{\link{GtkTextIter}}]  start of a range}
\item{\verb{end}}{[\verb{\link{GtkTextIter}}]  end of a range}
\item{\verb{include.hidden.chars}}{[logical]  whether to include invisible text}
}
\value{[character]  an allocated UTF-8 string}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
