\alias{gdkWindowScroll}
\name{gdkWindowScroll}
\title{gdkWindowScroll}
\description{Scroll the contents of its window, both pixels and children, by
the given amount. Portions of the window that the scroll operation
brings in from offscreen areas are invalidated.}
\usage{gdkWindowScroll(object, dx, dy)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{dx}}{Amount to scroll in the X direction}
\item{\verb{dy}}{Amount to scroll in the Y direction}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
