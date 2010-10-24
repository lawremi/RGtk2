\alias{atkTextGetCharacterExtents}
\name{atkTextGetCharacterExtents}
\title{atkTextGetCharacterExtents}
\description{Get the bounding box containing the glyph representing the character at 
    a particular text offset.}
\usage{atkTextGetCharacterExtents(object, offset, coords)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\verb{offset}}{[integer]  The offset of the text character for which bounding information is required.}
\item{\verb{coords}}{[\code{\link{AtkCoordType}}]  specify whether coordinates are relative to the screen or widget window }
}
\value{
A list containing the following elements:
\item{\verb{x}}{[integer]  Pointer for the x cordinate of the bounding box}
\item{\verb{y}}{[integer]  Pointer for the y cordinate of the bounding box}
\item{\verb{width}}{[integer]  Pointer for the width of the bounding box}
\item{\verb{height}}{[integer]  Pointer for the height of the bounding box}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
