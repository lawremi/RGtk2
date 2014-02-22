\alias{gtkTextViewAddChildInWindow}
\name{gtkTextViewAddChildInWindow}
\title{gtkTextViewAddChildInWindow}
\description{Adds a child at fixed coordinates in one of the text widget's
windows. The window must have nonzero size (see
\code{\link{gtkTextViewSetBorderWindowSize}}). Note that the child
coordinates are given relative to the \code{\link{GdkWindow}} in question, and
that these coordinates have no sane relationship to scrolling. When
placing a child in \verb{GTK_TEXT_WINDOW_WIDGET}, scrolling is
irrelevant, the child floats above all scrollable areas. But when
placing a child in one of the scrollable windows (border windows or
text window), you'll need to compute the child's correct position
in buffer coordinates any time scrolling occurs or buffer changes
occur, and then call \code{\link{gtkTextViewMoveChild}} to update the
child's position. Unfortunately there's no good way to detect that
scrolling has occurred, using the current API; a possible hack
would be to update all child positions when the scroll adjustments
change or the text buffer changes. See bug 64518 on
bugzilla.gnome.org for status of fixing this issue.}
\usage{gtkTextViewAddChildInWindow(object, child, which.window, xpos, 
    ypos)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{child}}{a \code{\link{GtkWidget}}}
\item{\verb{which.window}}{which window the child should appear in}
\item{\verb{xpos}}{X position of child in window coordinates}
\item{\verb{ypos}}{Y position of child in window coordinates}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
