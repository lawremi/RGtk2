\alias{cairoUserFontFaceGetUnicodeToGlyphFunc}
\name{cairoUserFontFaceGetUnicodeToGlyphFunc}
\title{cairoUserFontFaceGetUnicodeToGlyphFunc}
\description{Gets the unicode-to-glyph conversion function of a user-font.}
\usage{cairoUserFontFaceGetUnicodeToGlyphFunc(font.face)}
\arguments{\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  A user font face}}
\details{  Since 1.8}
\value{[cairo_user_scaled_font_unicode_to_glyph_func_t]  The unicode_to_glyph callback of \code{font.face}
or \code{NULL} if none set or an error occurred.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
