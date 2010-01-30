\alias{gdkWindowClearAreaE}
\name{gdkWindowClearAreaE}
\title{gdkWindowClearAreaE}
\description{Like \code{\link{gdkWindowClearArea}}, but also generates an expose event for
the cleared area.}
\usage{gdkWindowClearAreaE(object, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{x}}{[integer]  x coordinate of rectangle to clear}
\item{\verb{y}}{[integer]  y coordinate of rectangle to clear}
\item{\verb{width}}{[integer]  width of rectangle to clear}
\item{\verb{height}}{[integer]  height of rectangle to clear}
}
\details{This function has a stupid name because it dates back to the mists
time, pre-GDK-1.0.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
