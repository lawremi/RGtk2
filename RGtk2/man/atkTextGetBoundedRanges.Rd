\alias{atkTextGetBoundedRanges}
\name{atkTextGetBoundedRanges}
\title{atkTextGetBoundedRanges}
\description{Get the ranges of text in the specified bounding box.}
\usage{atkTextGetBoundedRanges(object, rect, coord.type, x.clip.type, 
    y.clip.type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\verb{rect}}{[\code{\link{AtkTextRectangle}}]  An AtkTextRectagle giving the dimensions of the bounding box.}
\item{\verb{coord.type}}{[\code{\link{AtkCoordType}}]  Specify whether coordinates are relative to the screen or widget window.}
\item{\verb{x.clip.type}}{[\code{\link{AtkTextClipType}}]  Specify the horizontal clip type.}
\item{\verb{y.clip.type}}{[\code{\link{AtkTextClipType}}]  Specify the vertical clip type.}
}
\details{  Since 1.3}
\value{[\code{\link{AtkTextRange}}]  list of AtkTextRange. The last element of the list returned 
         by this function will be NULL.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
