\alias{gtkTextViewScrollToMark}
\name{gtkTextViewScrollToMark}
\title{gtkTextViewScrollToMark}
\description{Scrolls \code{text.view} so that \code{mark} is on the screen in the position
indicated by \code{xalign} and \code{yalign}. An alignment of 0.0 indicates
left or top, 1.0 indicates right or bottom, 0.5 means center. 
If \code{use.align} is \code{FALSE}, the text scrolls the minimal distance to 
get the mark onscreen, possibly not scrolling at all. The effective 
screen for purposes of this function is reduced by a margin of size 
\code{within.margin}.}
\usage{gtkTextViewScrollToMark(object, mark, within.margin, use.align = FALSE, 
    xalign = 0.5, yalign = 0.5)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{mark}}{a \code{\link{GtkTextMark}}}
\item{\verb{within.margin}}{margin as a [0.0,0.5) fraction of screen size}
\item{\verb{use.align}}{whether to use alignment arguments (if \code{FALSE}, just
get the mark onscreen)}
\item{\verb{xalign}}{horizontal alignment of mark within visible area}
\item{\verb{yalign}}{vertical alignment of mark within visible area}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
