\alias{cairoUserFontFaceSetTextToGlyphsFunc}
\name{cairoUserFontFaceSetTextToGlyphsFunc}
\title{cairoUserFontFaceSetTextToGlyphsFunc}
\description{Sets th text-to-glyphs conversion function of a user-font.
See \verb{cairo_user_scaled_font_text_to_glyphs_func_t} for details of how the callback
works.}
\usage{cairoUserFontFaceSetTextToGlyphsFunc(font.face, text.to.glyphs.func)}
\arguments{
\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  A user font face}
\item{\verb{text.to.glyphs.func}}{[cairo_user_scaled_font_text_to_glyphs_func_t]  The text_to_glyphs callback, or \code{NULL}}
}
\details{The font-face should not be immutable or a \code{CAIRO_STATUS_USER_FONT_IMMUTABLE}
error will occur.  A user font-face is immutable as soon as a scaled-font
is created from it.  
  Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
