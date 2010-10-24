\alias{cairoSetFontMatrix}
\name{cairoSetFontMatrix}
\title{cairoSetFontMatrix}
\description{Sets the current font matrix to \code{matrix}. The font matrix gives a
transformation from the design space of the font (in this space,
the em-square is 1 unit by 1 unit) to user space. Normally, a
simple scale is used (see \code{\link{cairoSetFontSize}}), but a more
complex font matrix can be used to shear the font
or stretch it unequally along the two axes}
\usage{cairoSetFontMatrix(cr, matrix)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{matrix}}{[\code{\link{CairoMatrix}}]  a \code{\link{CairoMatrix}} describing a transform to be applied to
the current font.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
