\alias{cairoUserFontFaceGetRenderGlyphFunc}
\name{cairoUserFontFaceGetRenderGlyphFunc}
\title{cairoUserFontFaceGetRenderGlyphFunc}
\description{Gets the glyph rendering function of a user-font.}
\usage{cairoUserFontFaceGetRenderGlyphFunc(font.face)}
\arguments{\item{\verb{font.face}}{[\code{\link{CairoFontFace}}]  A user font face}}
\details{  Since 1.8}
\value{[cairo_user_scaled_font_render_glyph_func_t]  The render_glyph callback of \code{font.face}
or \code{NULL} if none set or an error has occurred.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
