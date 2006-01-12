\alias{atkTextGetCharacterExtents}
\name{atkTextGetCharacterExtents}
\title{atkTextGetCharacterExtents}
\description{Get the bounding box containing the glyph representing the character at 
    a particular text offset.}
\usage{atkTextGetCharacterExtents(object, offset, coords)}
\arguments{
\item{\code{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\code{offset}}{[integer]  The offset of the text character for which bounding information is required.}
\item{\code{coords}}{[\code{\link{AtkCoordType}}]  specify whether coordinates are relative to the screen or widget window }
}
\value{
A list containing the following elements:
\item{\code{x}}{[integer]  Pointer for the x cordinate of the bounding box}
\item{\code{y}}{[integer]  Pointer for the y cordinate of the bounding box}
\item{\code{width}}{[integer]  Pointer for the width of the bounding box}
\item{\code{height}}{[integer]  Pointer for the height of the bounding box}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
