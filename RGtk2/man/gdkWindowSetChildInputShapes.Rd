\alias{gdkWindowSetChildInputShapes}
\name{gdkWindowSetChildInputShapes}
\title{gdkWindowSetChildInputShapes}
\description{Sets the input shape mask of \code{window} to the union of input shape masks
for all children of \code{window}, ignoring the input shape mask of \code{window}
itself. Contrast with \code{\link{gdkWindowMergeChildInputShapes}} which includes
the input shape mask of \code{window} in the masks to be merged.}
\usage{gdkWindowSetChildInputShapes(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
