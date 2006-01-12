\alias{cairoScaledFontCreate}
\name{cairoScaledFontCreate}
\title{cairoScaledFontCreate}
\description{Creates a \code{\link{cairo_scaled_font_t}} object from a font face and matrices that
describe the size of the font and the environment in which it will
be used.}
\usage{cairoScaledFontCreate(font.face, font.matrix, ctm, option)}
\arguments{
\item{\code{font.face}}{[\code{\link{cairo_font_face_t}}]  a \code{\link{cairo_font_face_t}}}
\item{\code{font.matrix}}{[\code{\link{cairo_matrix_t}}]  font space to user space transformation matrix for the
      font. In the simplest case of a N point font, this matrix is
      just a scale by N, but it can also be used to shear the font
      or stretch it unequally along the two axes. See
      \code{\link{cairoSetFontMatrix}}.}
\item{\code{ctm}}{[\code{\link{cairo_matrix_t}}]  user to device transformation matrix with which the font will
      be used.}
\item{\code{option}}{[\code{\link{cairo_font_options_t}}]  options to use when getting metrics for the font and
          rendering with it.}
}
\value{[\code{\link{cairo_scaled_font_t}}]  a newly created \code{\link{cairo_scaled_font_t}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
