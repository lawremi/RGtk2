\alias{gdkWindowMergeChildInputShapes}
\name{gdkWindowMergeChildInputShapes}
\title{gdkWindowMergeChildInputShapes}
\description{Merges the input shape masks for any child windows into the
input shape mask for \code{window}. i.e. the union of all input masks
for \code{window} and its children will become the new input mask
for \code{window}. See \code{\link{gdkWindowInputShapeCombineMask}}.}
\usage{gdkWindowMergeChildInputShapes(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{This function is distinct from \code{\link{gdkWindowSetChildInputShapes}}
because it includes \code{window}'s input shape mask in the set of
shapes to be merged.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
