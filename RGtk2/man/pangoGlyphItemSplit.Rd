\alias{pangoGlyphItemSplit}
\name{pangoGlyphItemSplit}
\title{pangoGlyphItemSplit}
\description{Modifies \code{orig} to cover only the text after \code{split.index}, and
returns a new item that covers the text before \code{split.index} that
used to be in \code{orig}. You can think of \code{split.index} as the length of
the returned item. \code{split.index} may not be 0, and it may not be
greater than or equal to the length of \code{orig} (that is, there must
be at least one byte assigned to each item, you can't create a
zero-length item).}
\usage{pangoGlyphItemSplit(orig, text, split.index)}
\arguments{
\item{\verb{orig}}{[\code{\link{PangoGlyphItem}}]  a \code{\link{PangoItem}}}
\item{\verb{text}}{[char]  text to which positions in \code{orig} apply}
\item{\verb{split.index}}{[integer]  byte index of position to split item, relative to the start of the item}
}
\details{This function is similar in function to \code{\link{pangoItemSplit}} (and uses
it internally.)  
  Since 1.2}
\value{[\code{\link{PangoGlyphItem}}]  the newly allocated item representing text before
              \code{split.index},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
