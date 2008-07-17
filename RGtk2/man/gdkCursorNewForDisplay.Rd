\alias{gdkCursorNewForDisplay}
\name{gdkCursorNewForDisplay}
\title{gdkCursorNewForDisplay}
\description{Creates a new cursor from the set of builtin cursors.
Some useful ones are:
\itemize{
\item \code{GDK_RIGHT_PTR} (right-facing arrow)
\item \code{GDK_CROSSHAIR} (crosshair)
\item \code{GDK_XTERM} (I-beam)
\item \code{GDK_WATCH} (busy)
\item \code{GDK_FLEUR} (for moving objects)
\item \code{GDK_HAND1} (a right-pointing hand)
\item \code{GDK_HAND2} (a left-pointing hand)
\item \code{GDK_LEFT_SIDE} (resize left side)
\item \code{GDK_RIGHT_SIDE} (resize right side)
\item \code{GDK_TOP_LEFT_CORNER} (resize northwest corner)
\item \code{GDK_TOP_RIGHT_CORNER} (resize northeast corner)
\item \code{GDK_BOTTOM_LEFT_CORNER} (resize southwest corner)
\item \code{GDK_BOTTOM_RIGHT_CORNER} (resize southeast corner)
\item \code{GDK_TOP_SIDE} (resize top side)
\item \code{GDK_BOTTOM_SIDE} (resize bottom side)
\item \code{GDK_SB_H_DOUBLE_ARROW} (move vertical splitter)
\item \code{GDK_SB_V_DOUBLE_ARROW} (move horizontal splitter)
}}
\usage{gdkCursorNewForDisplay(display, cursor.type)}
\arguments{
\item{\code{display}}{[\code{\link{GdkDisplay}}]  the \code{\link{GdkDisplay}} for which the cursor will be created}
\item{\code{cursor.type}}{[\code{\link{GdkCursorType}}]  cursor to create}
}
\details{To make the cursor invisible, use \code{\link{gdkCursorNewFromPixmap}} to create
a cursor with no pixels in it.  

  Since  2.2}
\value{[\code{\link{GdkCursor}}]  a new \code{\link{GdkCursor}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
