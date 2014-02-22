\alias{pangoItemSplit}
\name{pangoItemSplit}
\title{pangoItemSplit}
\description{Modifies \code{orig} to cover only the text after \code{split.index}, and
returns a new item that covers the text before \code{split.index} that
used to be in \code{orig}. You can think of \code{split.index} as the length of
the returned item. \code{split.index} may not be 0, and it may not be
greater than or equal to the length of \code{orig} (that is, there must
be at least one byte assigned to each item, you can't create a
zero-length item). \code{split.offset} is the length of the first item in
chars, and must be provided because the text used to generate the
item isn't available, so \code{\link{pangoItemSplit}} can't count the char
length of the split items itself.}
\usage{pangoItemSplit(orig, split.index, split.offset)}
\arguments{
\item{\verb{orig}}{[\code{\link{PangoItem}}]  a \code{\link{PangoItem}}}
\item{\verb{split.index}}{[integer]  byte index of position to split item, relative to the start of the item}
\item{\verb{split.offset}}{[integer]  number of chars between start of \code{orig} and \code{split.index}}
}
\value{[\code{\link{PangoItem}}]  new item representing text before \code{split.index},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
