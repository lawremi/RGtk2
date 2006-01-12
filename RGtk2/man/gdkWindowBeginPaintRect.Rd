\alias{gdkWindowBeginPaintRect}
\name{gdkWindowBeginPaintRect}
\title{gdkWindowBeginPaintRect}
\description{A convenience wrapper around \code{\link{gdkWindowBeginPaintRegion}} which
creates a rectangular region for you. See
\code{\link{gdkWindowBeginPaintRegion}} for details.}
\usage{gdkWindowBeginPaintRect(object, rectangle)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{rectangle}}{[\code{\link{GdkRectangle}}]  rectangle you intend to draw to}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
