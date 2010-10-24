\alias{gdkWindowMove}
\name{gdkWindowMove}
\title{gdkWindowMove}
\description{Repositions a window relative to its parent window.
For toplevel windows, window managers may ignore or modify the move;
you should probably use \code{\link{gtkWindowMove}} on a \code{\link{GtkWindow}} widget
anyway, instead of using GDK functions. For child windows,
the move will reliably succeed.}
\usage{gdkWindowMove(object, x, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{x}}{X coordinate relative to window's parent}
\item{\verb{y}}{Y coordinate relative to window's parent}
}
\details{If you're also planning to resize the window, use \code{\link{gdkWindowMoveResize}}
to both move and resize simultaneously, for a nicer visual effect.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
