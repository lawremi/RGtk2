\alias{pangoFindParagraphBoundary}
\name{pangoFindParagraphBoundary}
\title{pangoFindParagraphBoundary}
\description{Locates a paragraph boundary in \code{text}. A boundary is caused by
delimiter characters, such as a newline, carriage return, carriage
return-newline pair, or Unicode paragraph separator character.  The
index of the run of delimiters is returned in
\code{paragraph.delimiter.index}. The index of the start of the paragraph
(index after all delimiters) is stored in \code{next.paragraph.start}.}
\usage{pangoFindParagraphBoundary(text, length = -1)}
\arguments{
\item{\verb{text}}{[character]  UTF-8 text}
\item{\verb{length}}{[integer]  length of \code{text} in bytes, or -1 if nul-terminated}
}
\details{If no delimiters are found, both \code{paragraph.delimiter.index} and
\code{next.paragraph.start} are filled with the length of \code{text} (an index one
off the end).  }
\value{
A list containing the following elements:
\item{\verb{paragraph.delimiter.index}}{[integer]  return location for index of delimiter}
\item{\verb{next.paragraph.start}}{[integer]  return location for start of next paragraph}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
