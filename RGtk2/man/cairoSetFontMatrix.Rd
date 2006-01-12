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
\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{cairo_t}}}
\item{\code{matrix}}{[\code{\link{cairo_matrix_t}}]  a \code{\link{cairo_matrix_t}} describing a transform to be applied to
the current font.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
