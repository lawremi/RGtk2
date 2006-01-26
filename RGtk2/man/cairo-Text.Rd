\alias{cairo-Text}
\alias{CairoGlyph}
\alias{CairoFontSlant}
\alias{CairoFontWeight}
\name{cairo-Text}
\title{Text}
\description{Rendering text and sets of glyphs}
\section{Methods and Functions}{
\code{\link{cairoSelectFontFace}(cr, family, slant, weight)}\cr
\code{\link{cairoSetFontSize}(cr, size)}\cr
\code{\link{cairoSetFontMatrix}(cr, matrix)}\cr
\code{\link{cairoGetFontMatrix}(cr, matrix)}\cr
\code{\link{cairoSetFontOptions}(cr, options)}\cr
\code{\link{cairoGetFontOptions}(cr)}\cr
\code{\link{cairoShowText}(cr, utf8)}\cr
\code{\link{cairoShowGlyphs}(cr, glyphs, num.glyphs)}\cr
\code{\link{cairoGetFontFace}(cr)}\cr
\code{\link{cairoFontExtents}(cr)}\cr
\code{\link{cairoSetFontFace}(cr, font.face)}\cr
\code{\link{cairoTextExtents}(cr, utf8)}\cr
\code{\link{cairoGlyphExtents}(cr, glyphs)}\cr
}
\section{Structures}{\describe{\item{\code{CairoGlyph}}{
The \code{\link{CairoGlyph}} structure holds information about a single glyph
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
\strong{\code{CairoGlyph} is a \link{transparent-type}.}

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
\item{\code{CairoFontSlant}}{


\describe{
\item{\code{CAIRO_FONT_SLANT_NORMAL (normal)}}{\emph{undocumented
}}
\item{\code{CAIRO_FONT_SLANT_ITALIC (italic)}}{\emph{undocumented
}}
\item{\code{CAIRO_FONT_SLANT_OBLIQUE (oblique)}}{\emph{undocumented
}}
}

}
\item{\code{CairoFontWeight}}{


\describe{
\item{\code{CAIRO_FONT_WEIGHT_NORMAL (normal)}}{\emph{undocumented
}}
\item{\code{CAIRO_FONT_WEIGHT_BOLD (bold)}}{\emph{undocumented
}}
}

}
}}
\references{\url{http://www.cairographics.org/manual/cairo-Text.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
