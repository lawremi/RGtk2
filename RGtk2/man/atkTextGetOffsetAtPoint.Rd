\alias{atkTextGetOffsetAtPoint}
\name{atkTextGetOffsetAtPoint}
\title{atkTextGetOffsetAtPoint}
\description{Gets the offset of the character located at coordinates \code{x} and \code{y}. \code{x} and \code{y}
are interpreted as being relative to the screen or this widget's window
depending on \code{coords}.}
\usage{atkTextGetOffsetAtPoint(object, x, y, coords)}
\arguments{
\item{\code{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\code{x}}{[integer]  screen x-position of character}
\item{\code{y}}{[integer]  screen y-position of character}
\item{\code{coords}}{[\code{\link{AtkCoordType}}]  specify whether coordinates are relative to the screen or
widget window }
}
\value{[integer]  the offset to the character which is located at
the specified \code{x} and \code{y} coordinates.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
