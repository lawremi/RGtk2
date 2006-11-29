\alias{atkTextGetRangeExtents}
\name{atkTextGetRangeExtents}
\title{atkTextGetRangeExtents}
\description{Get the bounding box for text within the specified range.}
\usage{atkTextGetRangeExtents(object, start.offset, end.offset, coord.type)}
\arguments{
\item{\code{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\code{start.offset}}{[integer]  The offset of the first text character for which boundary 
       information is required.}
\item{\code{end.offset}}{[integer]  The offset of the text character after the last character 
       for which boundary information is required.}
\item{\code{coord.type}}{[\code{\link{AtkCoordType}}]  Specify whether coordinates are relative to the screen or widget window.}
}
\details{  Since  ATK 1.3}
\value{
A list containing the following elements:
\item{\code{rect}}{[\code{\link{AtkTextRectangle}}]  A pointer to a AtkTextRectangle which is filled in by this function.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
