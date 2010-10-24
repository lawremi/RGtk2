\alias{gdkWindowGetRootCoords}
\name{gdkWindowGetRootCoords}
\title{gdkWindowGetRootCoords}
\description{Obtains the position of a window position in root
window coordinates. This is similar to
\code{\link{gdkWindowGetOrigin}} but allows you go pass
in any position in the window, not just the origin.}
\usage{gdkWindowGetRootCoords(object, x, y)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{x}}{X coordinate in window}
\item{\verb{y}}{Y coordinate in window}
}
\details{Since 2.18}
\value{
A list containing the following elements:
\item{\verb{root.x}}{return location for X coordinate}
\item{\verb{root.y}}{return location for Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
