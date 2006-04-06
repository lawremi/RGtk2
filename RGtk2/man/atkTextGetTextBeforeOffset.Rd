\alias{atkTextGetTextBeforeOffset}
\name{atkTextGetTextBeforeOffset}
\title{atkTextGetTextBeforeOffset}
\description{Gets the specified text.}
\usage{atkTextGetTextBeforeOffset(object, offset, boundary.type)}
\arguments{
\item{\code{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\code{offset}}{[integer]  position}
\item{\code{boundary.type}}{[\code{\link{AtkTextBoundary}}]  An \code{\link{AtkTextBoundary}}}
}
\details{If the boundary\_type if ATK\_TEXT\_BOUNDARY\_CHAR the character before the
offset is returned.
  
If the boundary\_type is ATK\_TEXT\_BOUNDARY\_WORD\_START the returned string
is from the word start before the word start before the offset to 
the word start before the offset.
  
The returned string will contain the word before the offset if the offset
is inside a word and will contain the word before the word before the 
offset if the offset is not inside a word.
  
If the boundary\_type is ATK\_TEXT\_BOUNDARY\_WORD\_END the returned string
is from the word end before the word end at or before the offset to the 
word end at or before the offset.
  
The returned string will contain the word before the offset if the offset
is inside a word or if the offset is not inside a word.
  
If the boundary type is ATK\_TEXT\_BOUNDARY\_SENTENCE\_START the returned
string is from the sentence start before the sentence start before 
the offset to the sentence start before the offset.
  
The returned string will contain the sentence before the offset if the 
offset is inside a sentence and will contain the sentence before the 
sentence before the offset if the offset is not inside a sentence.
  
If the boundary\_type is ATK\_TEXT\_BOUNDARY\_SENTENCE\_END the returned string
is from the sentence end before the sentence end at or before the offset to 
the sentence end at or before the offset.
  
The returned string will contain the sentence before the offset if the 
offset is inside a sentence or if the offset is not inside a sentence.
  
If the boundary type is ATK\_TEXT\_BOUNDARY\_LINE\_START the returned
string is from the line start before the line start ar or before the offset 
to the line start ar or before the offset.
  
If the boundary\_type is ATK\_TEXT\_BOUNDARY\_LINE\_END the returned string
is from the line end before the line end before the offset to the 
line end before the offset.  }
\value{
A list containing the following elements:
\item{retval}{[character]  the text before \code{offset} bounded by the specified \code{boundary.type}.}
\item{\code{start.offset}}{[integer]  the start offset of the returned string}
\item{\code{end.offset}}{[integer]  the offset of the first character after the 
             returned substring}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
