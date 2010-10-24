\alias{atkTextGetRangeExtents}
\name{atkTextGetRangeExtents}
\title{atkTextGetRangeExtents}
\description{Get the bounding box for text within the specified range.}
\usage{atkTextGetRangeExtents(object, start.offset, end.offset, coord.type)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\verb{start.offset}}{[integer]  The offset of the first text character for which boundary 
       information is required.}
\item{\verb{end.offset}}{[integer]  The offset of the text character after the last character 
       for which boundary information is required.}
\item{\verb{coord.type}}{[\code{\link{AtkCoordType}}]  Specify whether coordinates are relative to the screen or widget window.}
}
\details{  Since 1.3}
\value{
A list containing the following elements:
\item{\verb{rect}}{[\code{\link{AtkTextRectangle}}]  A pointer to a AtkTextRectangle which is filled in by this function.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
