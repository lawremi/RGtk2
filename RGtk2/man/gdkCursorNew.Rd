\alias{gdkCursorNew}
\name{gdkCursorNew}
\title{gdkCursorNew}
\description{Creates a new cursor from the set of builtin cursors for the default display.
See \code{\link{gdkCursorNewForDisplay}}.}
\usage{gdkCursorNew(cursor.type)}
\arguments{\item{\verb{cursor.type}}{[\code{\link{GdkCursorType}}]  cursor to create}}
\details{To make the cursor invisible, use \code{\link{gdkCursorNewFromPixmap}} to create
a cursor with no pixels in it.  }
\value{[\verb{\link{GdkCursor}}]  a new \verb{\link{GdkCursor}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
