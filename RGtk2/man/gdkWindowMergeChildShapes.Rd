\alias{gdkWindowMergeChildShapes}
\name{gdkWindowMergeChildShapes}
\title{gdkWindowMergeChildShapes}
\description{Merges the shape masks for any child windows into the
shape mask for \code{window}. i.e. the union of all masks
for \code{window} and its children will become the new mask
for \code{window}. See \code{\link{gdkWindowShapeCombineMask}}.}
\usage{gdkWindowMergeChildShapes(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{This function is distinct from \code{\link{gdkWindowSetChildShapes}}
because it includes \code{window}'s shape mask in the set of shapes to
be merged.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
