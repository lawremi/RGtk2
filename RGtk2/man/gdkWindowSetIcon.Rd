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
\item{\code{object}}{[\code{\link{GdkWindow}}]  a toplevel \code{\link{GdkWindow}}}
\item{\code{icon.window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}} to use for the icon, or \code{NULL} to unset}
\item{\code{pixmap}}{[\code{\link{GdkPixmap}}]  a \code{\link{GdkPixmap}} to use as the icon, or \code{NULL} to unset}
\item{\code{mask}}{[\code{\link{GdkBitmap}}]  a 1-bit pixmap (\code{\link{GdkBitmap}}) to use as mask for \code{pixmap}, or \code{NULL} to have none}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
