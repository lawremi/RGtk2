\alias{cairoScaledFontCreate}
\name{cairoScaledFontCreate}
\title{cairoScaledFontCreate}
\description{Creates a \code{\link{CairoScaledFont}} object from a font face and matrices that
describe the size of the font and the environment in which it will
be used.}
\usage{cairoScaledFontCreate(font.face, font.matrix, ctm, option)}
\arguments{
\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  a \code{\link{CairoFontFace}}}
\item{\verb{font.matrix}}{[\code{\link{CairoMatrix}}]  font space to user space transformation matrix for the
      font. In the simplest case of a N point font, this matrix is
      just a scale by N, but it can also be used to shear the font
      or stretch it unequally along the two axes. See
      \code{\link{cairoSetFontMatrix}}.}
\item{\verb{ctm}}{[\code{\link{CairoMatrix}}]  user to device transformation matrix with which the font will
      be used.}
\item{\verb{option}}{[\code{\link{CairoFontOptions}}]  options to use when getting metrics for the font and
          rendering with it.}
}
\value{[\code{\link{CairoScaledFont}}]  a newly created \code{\link{CairoScaledFont}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
