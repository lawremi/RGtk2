\alias{gdk-Cursors}
\alias{GdkCursor}
\alias{GdkCursorType}
\name{gdk-Cursors}
\title{Cursors}
\description{Standard and pixmap cursors}
\usage{
\link{gdkCursorNew}(cursor.type)
\link{gdkCursorNewFromPixmap}(source, mask, fg, bg, x, y)
\link{gdkCursorNewFromPixbuf}(display, source, x, y)
\link{gdkCursorNewFromName}(display, name)
\link{gdkCursorNewForDisplay}(display, cursor.type)
\link{gdkCursorGetDisplay}(object)
\link{gdkCursorGetImage}(object)
}
\details{These functions are used to create and destroy cursors.
There is a number of standard cursors, but it is also
possible to construct new cursors from pixmaps and
pixbufs. There may be limitations as to what kinds of
cursors can be constructed on a given display, see
\code{\link{gdkDisplaySupportsCursorAlpha}}, 
\code{\link{gdkDisplaySupportsCursorColor}},
\code{\link{gdkDisplayGetDefaultCursorSize}} and
\code{\link{gdkDisplayGetMaximalCursorSize}}.
  
Cursors by themselves are not very interesting, they must be be
bound to a window for users to see them. This is done with 
\code{\link{gdkWindowSetCursor}} or by setting the cursor member of the
\code{\link{GdkWindowAttr}} struct passed to \code{\link{gdkWindowNew}}.}
\section{Structures}{\describe{\item{\code{GdkCursor}}{
A \code{GdkCursor} structure represents a cursor.

\describe{\item{\code{type}}{[\code{\link{GdkCursorType}}] the \code{\link{GdkCursorType}} of the cursor}}

}}}
\section{Enums and Flags}{\describe{\item{\code{enum GdkCursorType}}{
The standard cursors available.

\describe{\item{\code{GDK_CURSOR_IS_PIXMAP (gdk-cursor-is-pixmap)}}{\emph{undocumented
}}}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Cursors.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
