\alias{gtkListScrollHorizontal}
\name{gtkListScrollHorizontal}
\title{gtkListScrollHorizontal}
\description{
Scrolls \code{list} horizontaly. This supposes that the list is packed into a
scrolled window or something similar, and adjustments are well
set. Step and page increment are those from the horizontal adjustment
of \code{list}. Backward means to the left, and forward to the
right. Out of bounds values are truncated.
\code{scroll.type} may be any valid \code{\link{GtkScrollType}}. If \code{scroll.type} is
\verb{GTK_SCROLL_NONE}, nothing is done. If it's \verb{GTK_SCROLL_JUMP}, the list
scrolls to the ratio \code{position}: 0 is full left, 1 is full right.
\strong{WARNING: \code{gtk_list_scroll_horizontal} is deprecated and should not be used in newly-written code.}
}
\usage{gtkListScrollHorizontal(object, scroll.type, position)}
\arguments{
\item{\verb{object}}{the list widget.}
\item{\verb{scroll.type}}{the scrolling type.}
\item{\verb{position}}{the position if \code{scroll.type} is \verb{GTK_SCROLL_JUMP}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
