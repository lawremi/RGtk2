\alias{cairoUserFontFaceGetTextToGlyphsFunc}
\name{cairoUserFontFaceGetTextToGlyphsFunc}
\title{cairoUserFontFaceGetTextToGlyphsFunc}
\description{Gets the text-to-glyphs conversion function of a user-font.}
\usage{cairoUserFontFaceGetTextToGlyphsFunc(font.face)}
\arguments{\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  A user font face}}
\details{  Since 1.8}
\value{[cairo_user_scaled_font_text_to_glyphs_func_t]  The text_to_glyphs callback of \code{font.face}
or \code{NULL} if none set or an error occurred.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
