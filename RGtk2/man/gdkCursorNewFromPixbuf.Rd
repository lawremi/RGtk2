\alias{gdkCursorNewFromPixbuf}
\name{gdkCursorNewFromPixbuf}
\title{gdkCursorNewFromPixbuf}
\description{Creates a new cursor from a pixbuf. }
\usage{gdkCursorNewFromPixbuf(display, source, x, y)}
\arguments{
\item{\verb{display}}{[\verb{\link{GdkDisplay}}]  the \verb{\link{GdkDisplay}} for which the cursor will be created}
\item{\verb{source}}{[\verb{\link{GdkPixbuf}}]  the \verb{\link{GdkPixbuf}} containing the cursor image}
\item{\verb{x}}{[integer]  the horizontal offset of the 'hotspot' of the cursor. }
\item{\verb{y}}{[integer]  the vertical offset of the 'hotspot' of the cursor.}
}
\details{Not all GDK backends support RGBA cursors. If they are not 
supported, a monochrome approximation will be displayed. 
The functions \code{\link{gdkDisplaySupportsCursorAlpha}} and 
\code{\link{gdkDisplaySupportsCursorColor}} can be used to determine
whether RGBA cursors are supported; 
\code{\link{gdkDisplayGetDefaultCursorSize}} and 
\code{\link{gdkDisplayGetMaximalCursorSize}} give information about 
cursor sizes.
  
On the X backend, support for RGBA cursors requires a
sufficently new version of the X Render extension.  

  Since  2.4}
\value{[\verb{\link{GdkCursor}}]  a new \verb{\link{GdkCursor}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
