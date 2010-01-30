\alias{gdkWindowSetBackPixmap}
\name{gdkWindowSetBackPixmap}
\title{gdkWindowSetBackPixmap}
\description{Sets the background pixmap of \code{window}. May also be used to set a background of
"None" on \code{window}, by setting a background pixmap of \code{NULL}.
A background pixmap will be tiled, positioning the first tile at the origin of
\code{window}, or if \code{parent.relative} is \code{TRUE}, the tiling will be done based on the
origin of the parent window (useful to align tiles in a parent with tiles
in a child).}
\usage{gdkWindowSetBackPixmap(object, pixmap = NULL, parent.relative)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}]  a \verb{\link{GdkPixmap}}, or \code{NULL}}
\item{\verb{parent.relative}}{[logical]  whether the tiling origin is at the origin of \code{window}'s parent}
}
\details{A background pixmap of \code{NULL} means that the window will have no
background.  A window with no background will never have its
background filled by the windowing system, instead the window will
contain whatever pixels were already in the corresponding area of
the display.
  
The windowing system will normally fill a window with its background
when the window is obscured then exposed, and when you call
\code{\link{gdkWindowClear}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
