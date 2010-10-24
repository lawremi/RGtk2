\alias{gdkWindowEndPaint}
\name{gdkWindowEndPaint}
\title{gdkWindowEndPaint}
\description{Indicates that the backing store created by the most recent call to
\code{\link{gdkWindowBeginPaintRegion}} should be copied onscreen and
deleted, leaving the next-most-recent backing store or no backing
store at all as the active paint region. See
\code{\link{gdkWindowBeginPaintRegion}} for full details. It is an error to
call this function without a matching
\code{\link{gdkWindowBeginPaintRegion}} first.}
\usage{gdkWindowEndPaint(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
