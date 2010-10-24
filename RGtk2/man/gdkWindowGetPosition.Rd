\alias{gdkWindowGetPosition}
\name{gdkWindowGetPosition}
\title{gdkWindowGetPosition}
\description{Obtains the position of the window as reported in the
most-recently-processed \code{\link{GdkEventConfigure}}. Contrast with
\code{\link{gdkWindowGetGeometry}} which queries the X server for the
current window position, regardless of which events have been
received or processed.}
\usage{gdkWindowGetPosition(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{The position coordinates are relative to the window's parent window.}
\value{
A list containing the following elements:
\item{\verb{x}}{X coordinate of window}
\item{\verb{y}}{Y coordinate of window}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
