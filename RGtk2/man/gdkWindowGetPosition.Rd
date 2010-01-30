\alias{gdkWindowGetPosition}
\name{gdkWindowGetPosition}
\title{gdkWindowGetPosition}
\description{Obtains the position of the window as reported in the
most-recently-processed \verb{\link{GdkEventConfigure}}. Contrast with
\code{\link{gdkWindowGetGeometry}} which queries the X server for the
current window position, regardless of which events have been
received or processed.}
\usage{gdkWindowGetPosition(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}}
\details{The position coordinates are relative to the window's parent window.  }
\value{
A list containing the following elements:
\item{\verb{x}}{[integer]  X coordinate of window}
\item{\verb{y}}{[integer]  Y coordinate of window}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
