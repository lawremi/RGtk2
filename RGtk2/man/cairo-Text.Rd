\alias{cairo-Text}
\alias{cairo_glyph_t}
\alias{cairo_font_slant_t}
\alias{cairo_font_weight_t}
\name{cairo-Text}
\title{Text}
\description{Rendering text and sets of glyphs}
\usage{
\link{cairoSelectFontFace}(cr, family, slant, weight)
\link{cairoSetFontSize}(cr, size)
\link{cairoSetFontMatrix}(cr, matrix)
\link{cairoGetFontMatrix}(cr, matrix)
\link{cairoSetFontOptions}(cr, options)
\link{cairoGetFontOptions}(cr)
\link{cairoShowText}(cr, utf8)
\link{cairoShowGlyphs}(cr, glyphs, num.glyphs)
\link{cairoGetFontFace}(cr)
\link{cairoFontExtents}(cr)
\link{cairoSetFontFace}(cr, font.face)
\link{cairoTextExtents}(cr, utf8)
\link{cairoGlyphExtents}(cr, glyphs)
}
\section{Structures}{\describe{\item{\code{cairo_glyph_t}}{
The \code{\link{cairo_glyph_t}} structure holds information about a single glyph
when drawing or measuring text. A font is (in simple terms) a
collection of shapes used to draw text. A glyph is one of these
shapes. There can be multiple glyphs for a single character
(alternates to be used in different contexts, for example), or a
glyph can be a \dfn{ligature} of multiple
characters. Cairo doesn't expose any way of converting input text
into glyphs, so in order to use the Cairo interfaces that take
arrays of glyphs, you must directly access the appropriate
underlying font system.
  
Note that the offsets given by \code{x} and \code{y} are not cumulative. When
drawing or measuring text, each glyph is individually positioned
with respect to the overall origin  
\strong{\code{cairo_glyph_t} is a \link{transparent-type}.}

\describe{
\item{\code{index}}{[numeric]  glyph index in the font. The exact interpretation of the
     glyph index depends on the font technology being used.}
\item{\code{x}}{[numeric]  the offset in the X direction between the origin used for
    drawing or measuring the string and the origin of this glyph.}
\item{\code{y}}{[numeric]  the offset in the Y direction between the origin used for
    drawing or measuring the string and the origin of this glyph.}
}

}}}
\section{Enums and Flags}{\describe{
\item{\code{enum cairo_font_slant_t}}{


\describe{
\item{\code{CAIRO_FONT_SLANT_NORMAL (normal)}}{\emph{undocumented
}}
\item{\code{CAIRO_FONT_SLANT_ITALIC (italic)}}{\emph{undocumented
}}
\item{\code{CAIRO_FONT_SLANT_OBLIQUE (oblique)}}{\emph{undocumented
}}
}

}
\item{\code{enum cairo_font_weight_t}}{


\describe{
\item{\code{CAIRO_FONT_WEIGHT_NORMAL (normal)}}{\emph{undocumented
}}
\item{\code{CAIRO_FONT_WEIGHT_BOLD (bold)}}{\emph{undocumented
}}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/cairo/cairo-Text.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
