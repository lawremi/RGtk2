\alias{atkTextGetTextAtOffset}
\name{atkTextGetTextAtOffset}
\title{atkTextGetTextAtOffset}
\description{Gets the specified text.}
\usage{atkTextGetTextAtOffset(object, offset, boundary.type)}
\arguments{
\item{\code{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\code{offset}}{[integer]  position}
\item{\code{boundary.type}}{[\code{\link{AtkTextBoundary}}]  An \code{\link{AtkTextBoundary}}}
}
\details{If the boundary\_type if ATK\_TEXT\_BOUNDARY\_CHAR the character at the
offset is returned.
  
If the boundary\_type is ATK\_TEXT\_BOUNDARY\_WORD\_START the returned string
is from the word start at or before the offset to the word start after 
the offset.
  
The returned string will contain the word at the offset if the offset
is inside a word and will contain the word before the offset if the 
offset is not inside a word.
  
If the boundary\_type is ATK\_TEXT\_BOUNDARY\_WORD\_END the returned string
is from the word end before the offset to the word end at or after the
offset.
  
The returned string will contain the word at the offset if the offset
is inside a word and will contain the word after to the offset if the 
offset is not inside a word.
  
If the boundary type is ATK\_TEXT\_BOUNDARY\_SENTENCE\_START the returned
string is from the sentence start at or before the offset to the sentence
start after the offset.
  
The returned string will contain the sentence at the offset if the offset
is inside a sentence and will contain the sentence before the offset 
if the offset is not inside a sentence.
  
If the boundary\_type is ATK\_TEXT\_BOUNDARY\_SENTENCE\_END the returned string
is from the sentence end before the offset to the sentence end at or
after the offset.
  
The returned string will contain the sentence at the offset if the offset
is inside a sentence and will contain the sentence after the offset 
if the offset is not inside a sentence.
  
If the boundary type is ATK\_TEXT\_BOUNDARY\_LINE\_START the returned
string is from the line start at or before the offset to the line
start after the offset.
  
If the boundary\_type is ATK\_TEXT\_BOUNDARY\_LINE\_END the returned string
is from the line end before the offset to the line end at or after
the offset.  }
\value{
A list containing the following elements:
\item{retval}{[character]  the text at \code{offset} bounded by the specified \code{boundary.type}.}
\item{\code{start.offset}}{[integer]  the start offset of the returned string}
\item{\code{end.offset}}{[integer]  the offset of the first character after the 
             returned substring}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
