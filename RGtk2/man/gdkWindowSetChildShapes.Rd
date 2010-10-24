\alias{gdkWindowSetChildShapes}
\name{gdkWindowSetChildShapes}
\title{gdkWindowSetChildShapes}
\description{Sets the shape mask of \code{window} to the union of shape masks
for all children of \code{window}, ignoring the shape mask of \code{window}
itself. Contrast with \code{\link{gdkWindowMergeChildShapes}} which includes
the shape mask of \code{window} in the masks to be merged.}
\usage{gdkWindowSetChildShapes(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
