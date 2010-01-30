\alias{gdkWindowSetIcon}
\name{gdkWindowSetIcon}
\title{gdkWindowSetIcon}
\description{Sets the icon of \code{window} as a pixmap or window. If using GTK+, investigate
\code{\link{gtkWindowSetDefaultIconList}} first, and then \code{\link{gtkWindowSetIconList}}
and \code{\link{gtkWindowSetIcon}}. If those don't meet your needs, look at
\code{\link{gdkWindowSetIconList}}. Only if all those are too high-level do you
want to fall back to \code{\link{gdkWindowSetIcon}}.}
\usage{gdkWindowSetIcon(object, icon.window, pixmap, mask)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a toplevel \verb{\link{GdkWindow}}}
\item{\verb{icon.window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}} to use for the icon, or \code{NULL} to unset}
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}]  a \verb{\link{GdkPixmap}} to use as the icon, or \code{NULL} to unset}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}]  a 1-bit pixmap (\verb{\link{GdkBitmap}}) to use as mask for \code{pixmap}, or \code{NULL} to have none}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
