\alias{cairoScaledFontTextExtents}
\name{cairoScaledFontTextExtents}
\title{cairoScaledFontTextExtents}
\description{Gets the extents for a string of text. The extents describe a
user-space rectangle that encloses the "inked" portion of the text
drawn at the origin (0,0) (as it would be drawn by \code{\link{cairoShowText}}
if the cairo graphics state were set to the same font_face,
font_matrix, ctm, and font_options as \code{scaled.font}).  Additionally,
the x_advance and y_advance values indicate the amount by which the
current point would be advanced by \code{\link{cairoShowText}}.}
\usage{cairoScaledFontTextExtents(scaled.font, utf8)}
\arguments{
\item{\verb{scaled.font}}{[\code{\link{CairoScaledFont}}]  a \code{\link{CairoScaledFont}}}
\item{\verb{utf8}}{[char]  a string of text, encoded in UTF-8}
}
\details{Note that whitespace characters do not directly contribute to the
size of the rectangle (extents.width and extents.height). They do
contribute indirectly by changing the position of non-whitespace
characters. In particular, trailing whitespace characters are
likely to not affect the size of the rectangle, though they will
affect the x_advance and y_advance values.  
  Since 1.2}
\value{
A list containing the following elements:
\item{\verb{extents}}{[\code{\link{CairoTextExtents}}]  a \code{\link{CairoTextExtents}} which to store the retrieved extents.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
