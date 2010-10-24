\alias{cairoUserFontFaceSetUnicodeToGlyphFunc}
\name{cairoUserFontFaceSetUnicodeToGlyphFunc}
\title{cairoUserFontFaceSetUnicodeToGlyphFunc}
\description{Sets the unicode-to-glyph conversion function of a user-font.
See \verb{cairo_user_scaled_font_unicode_to_glyph_func_t} for details of how the callback
works.}
\usage{cairoUserFontFaceSetUnicodeToGlyphFunc(font.face, unicode.to.glyph.func)}
\arguments{
\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  A user font face}
\item{\verb{unicode.to.glyph.func}}{[cairo_user_scaled_font_unicode_to_glyph_func_t]  The unicode_to_glyph callback, or \code{NULL}}
}
\details{The font-face should not be immutable or a \code{CAIRO_STATUS_USER_FONT_IMMUTABLE}
error will occur.  A user font-face is immutable as soon as a scaled-font
is created from it.  
  Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
