\alias{gdkWindowSetCursor}
\name{gdkWindowSetCursor}
\title{gdkWindowSetCursor}
\description{Sets the mouse pointer for a \verb{\link{GdkWindow}}. Use \code{\link{gdkCursorNew}} or
\code{\link{gdkCursorNewFromPixmap}} to create the cursor.
To make the cursor invisible, use \code{\link{gdkCursorNewFromPixmap}} to create
a cursor with no pixels in it. Passing \code{NULL} for the \code{cursor} argument
to \code{\link{gdkWindowSetCursor}} means that \code{window} will use the cursor of
its parent window. Most windows should use this default.}
\usage{gdkWindowSetCursor(object, cursor = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{cursor}}{[\verb{\link{GdkCursor}}]  a cursor}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
