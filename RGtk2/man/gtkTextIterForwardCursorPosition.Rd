\alias{gtkTextIterForwardCursorPosition}
\name{gtkTextIterForwardCursorPosition}
\title{gtkTextIterForwardCursorPosition}
\description{Moves \code{iter} forward by a single cursor position. Cursor positions
are (unsurprisingly) positions where the cursor can appear. Perhaps
surprisingly, there may not be a cursor position between all
characters. The most common example for European languages would be
a carriage return/newline sequence. For some Unicode characters,
the equivalent of say the letter "a" with an accent mark will be
represented as two characters, first the letter then a "combining
mark" that causes the accent to be rendered; so the cursor can't go
between those two characters. See also the \code{\link{PangoLogAttr}} structure and
\code{\link{pangoBreak}} function.}
\usage{gtkTextIterForwardCursorPosition(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextIter}}}}
\value{[logical] \code{TRUE} if we moved and the new position is dereferenceable}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
