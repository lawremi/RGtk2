\alias{atkTextGetTextAtOffset}
\name{atkTextGetTextAtOffset}
\title{atkTextGetTextAtOffset}
\description{Gets the specified text.}
\usage{atkTextGetTextAtOffset(object, offset, boundary.type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\verb{offset}}{[integer]  position}
\item{\verb{boundary.type}}{[\code{\link{AtkTextBoundary}}]  An \code{\link{AtkTextBoundary}}}
}
\details{If the boundary_type if ATK_TEXT_BOUNDARY_CHAR the character at the
offset is returned.
  
If the boundary_type is ATK_TEXT_BOUNDARY_WORD_START the returned string
is from the word start at or before the offset to the word start after 
the offset.
  
The returned string will contain the word at the offset if the offset
is inside a word and will contain the word before the offset if the 
offset is not inside a word.
  
If the boundary_type is ATK_TEXT_BOUNDARY_WORD_END the returned string
is from the word end before the offset to the word end at or after the
offset.
  
The returned string will contain the word at the offset if the offset
is inside a word and will contain the word after to the offset if the 
offset is not inside a word.
  
If the boundary type is ATK_TEXT_BOUNDARY_SENTENCE_START the returned
string is from the sentence start at or before the offset to the sentence
start after the offset.
  
The returned string will contain the sentence at the offset if the offset
is inside a sentence and will contain the sentence before the offset 
if the offset is not inside a sentence.
  
If the boundary_type is ATK_TEXT_BOUNDARY_SENTENCE_END the returned string
is from the sentence end before the offset to the sentence end at or
after the offset.
  
The returned string will contain the sentence at the offset if the offset
is inside a sentence and will contain the sentence after the offset 
if the offset is not inside a sentence.
  
If the boundary type is ATK_TEXT_BOUNDARY_LINE_START the returned
string is from the line start at or before the offset to the line
start after the offset.
  
If the boundary_type is ATK_TEXT_BOUNDARY_LINE_END the returned string
is from the line end before the offset to the line end at or after
the offset.  }
\value{
A list containing the following elements:
\item{retval}{[character]  the text at \code{offset} bounded by the specified \code{boundary.type}.}
\item{\verb{start.offset}}{[integer]  the start offset of the returned string}
\item{\verb{end.offset}}{[integer]  the offset of the first character after the 
             returned substring}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
