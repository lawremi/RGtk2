\alias{gdkWindowResize}
\name{gdkWindowResize}
\title{gdkWindowResize}
\description{Resizes \code{window}; for toplevel windows, asks the window manager to resize
the window. The window manager may not allow the resize. When using GTK+,
use \code{\link{gtkWindowResize}} instead of this low-level GDK function.}
\usage{gdkWindowResize(object, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{width}}{[integer]  new width of the window}
\item{\code{height}}{[integer]  new height of the window}
}
\details{Windows may not be resized below 1x1.
  
If you're also planning to move the window, use \code{\link{gdkWindowMoveResize}}
to both move and resize simultaneously, for a nicer visual effect.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
