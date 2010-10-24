\alias{cairoUserFontFaceSetRenderGlyphFunc}
\name{cairoUserFontFaceSetRenderGlyphFunc}
\title{cairoUserFontFaceSetRenderGlyphFunc}
\description{Sets the glyph rendering function of a user-font.
See \verb{cairo_user_scaled_font_render_glyph_func_t} for details of how the callback
works.}
\usage{cairoUserFontFaceSetRenderGlyphFunc(font.face, render.glyph.func)}
\arguments{
\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  A user font face}
\item{\verb{render.glyph.func}}{[cairo_user_scaled_font_render_glyph_func_t]  The render_glyph callback, or \code{NULL}}
}
\details{The font-face should not be immutable or a \code{CAIRO_STATUS_USER_FONT_IMMUTABLE}
error will occur.  A user font-face is immutable as soon as a scaled-font
is created from it.
  
The render_glyph callback is the only mandatory callback of a user-font.
If the callback is \code{NULL} and a glyph is tried to be rendered using
\code{font.face}, a \code{CAIRO_STATUS_USER_FONT_ERROR} will occur.  
  Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
