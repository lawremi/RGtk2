\alias{pangoLayoutLineXToIndex}
\name{pangoLayoutLineXToIndex}
\title{pangoLayoutLineXToIndex}
\description{Converts from x offset to the byte index of the corresponding
character within the text of the layout. If \code{x.pos} is outside the line,
\code{index.} and \code{trailing} will point to the very first or very last position
in the line. This determination is based on the resolved direction
of the paragraph; for example, if the resolved direction is
right-to-left, then an X position to the right of the line (after it)
results in 0 being stored in \code{index.} and \code{trailing}. An X position to the
left of the line results in \code{index.} pointing to the (logical) last
grapheme in the line and \code{trailing} being set to the number of characters
in that grapheme. The reverse is true for a left-to-right line.}
\usage{pangoLayoutLineXToIndex(object, x.pos)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayoutLine}}]       a \code{\link{PangoLayoutLine}}}
\item{\verb{x.pos}}{[integer]      the X offset (in Pango units)
            from the left edge of the line.}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{FALSE} if \code{x.pos} was outside the line, \code{TRUE} if inside}
\item{\verb{index}}{[integer]     location to store calculated byte index for
            the grapheme in which the user clicked.}
\item{\verb{trailing}}{[integer]   location to store an integer indicating where
            in the grapheme the user clicked. It will either
            be zero, or the number of characters in the
            grapheme. 0 represents the leading edge of the grapheme.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
