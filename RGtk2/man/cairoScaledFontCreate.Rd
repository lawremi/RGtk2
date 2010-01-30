\alias{cairoScaledFontCreate}
\name{cairoScaledFontCreate}
\title{cairoScaledFontCreate}
\description{Creates a \verb{\link{CairoScaledFont}} object from a font face and matrices that
describe the size of the font and the environment in which it will
be used.}
\usage{cairoScaledFontCreate(font.face, font.matrix, ctm, option)}
\arguments{
\item{\verb{font.face}}{[\verb{\link{CairoFontFace}}]  a \verb{\link{CairoFontFace}}}
\item{\verb{font.matrix}}{[\verb{\link{CairoMatrix}}]  font space to user space transformation matrix for the
      font. In the simplest case of a N point font, this matrix is
      just a scale by N, but it can also be used to shear the font
      or stretch it unequally along the two axes. See
      \code{\link{cairoSetFontMatrix}}.}
\item{\verb{ctm}}{[\verb{\link{CairoMatrix}}]  user to device transformation matrix with which the font will
      be used.}
\item{\verb{option}}{[\verb{\link{CairoFontOptions}}]  options to use when getting metrics for the font and
          rendering with it. A \code{NULL} pointer will be interpreted as
          meaning the default options.}
}
\value{[\verb{\link{CairoScaledFont}}]  a newly created \verb{\link{CairoScaledFont}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
