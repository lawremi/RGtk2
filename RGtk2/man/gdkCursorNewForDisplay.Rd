\alias{gdkCursorNewForDisplay}
\name{gdkCursorNewForDisplay}
\title{gdkCursorNewForDisplay}
\description{Creates a new cursor from the set of builtin cursors.
Some useful ones are:
\itemize{
\item \verb{GDK_RIGHT_PTR} (right-facing arrow)
\item \verb{GDK_CROSSHAIR} (crosshair)
\item \verb{GDK_XTERM} (I-beam)
\item \verb{GDK_WATCH} (busy)
\item \verb{GDK_FLEUR} (for moving objects)
\item \verb{GDK_HAND1} (a right-pointing hand)
\item \verb{GDK_HAND2} (a left-pointing hand)
\item \verb{GDK_LEFT_SIDE} (resize left side)
\item \verb{GDK_RIGHT_SIDE} (resize right side)
\item \verb{GDK_TOP_LEFT_CORNER} (resize northwest corner)
\item \verb{GDK_TOP_RIGHT_CORNER} (resize northeast corner)
\item \verb{GDK_BOTTOM_LEFT_CORNER} (resize southwest corner)
\item \verb{GDK_BOTTOM_RIGHT_CORNER} (resize southeast corner)
\item \verb{GDK_TOP_SIDE} (resize top side)
\item \verb{GDK_BOTTOM_SIDE} (resize bottom side)
\item \verb{GDK_SB_H_DOUBLE_ARROW} (move vertical splitter)
\item \verb{GDK_SB_V_DOUBLE_ARROW} (move horizontal splitter)
}}
\usage{gdkCursorNewForDisplay(display, cursor.type)}
\arguments{
\item{\verb{display}}{[\verb{\link{GdkDisplay}}]  the \verb{\link{GdkDisplay}} for which the cursor will be created}
\item{\verb{cursor.type}}{[\code{\link{GdkCursorType}}]  cursor to create}
}
\details{To make the cursor invisible, use \code{\link{gdkCursorNewFromPixmap}} to create
a cursor with no pixels in it.  

  Since  2.2}
\value{[\verb{\link{GdkCursor}}]  a new \verb{\link{GdkCursor}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
