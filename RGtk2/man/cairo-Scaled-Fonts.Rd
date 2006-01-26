\alias{cairo-Scaled-Fonts}
\alias{CairoScaledFont}
\alias{CairoFontExtents}
\alias{CairoTextExtents}
\alias{cairoScaledFont}
\name{cairo-Scaled-Fonts}
\title{Scaled Fonts}
\description{Caching metrics for a particular font size}
\section{Methods and Functions}{
\code{\link{cairoScaledFontCreate}(font.face, font.matrix, ctm, option)}\cr
\code{\link{cairoScaledFontStatus}(scaled.font)}\cr
\code{\link{cairoScaledFontExtents}(scaled.font)}\cr
\code{\link{cairoScaledFontGlyphExtents}(scaled.font, glyphs, num.glyphs)}\cr
\code{cairoScaledFont(font.face, font.matrix, ctm, option)}
}
\section{Structures}{\describe{
\item{\code{CairoScaledFont}}{
A \code{\link{CairoScaledFont}} is a font scaled to a particular size and device
resolution. A cairo_scaled_font_t is most useful for low-level font
usage where a library or application wants to cache a reference
to a scaled font to speed up the computation of metrics.  

}
\item{\code{CairoFontExtents}}{
The \code{\link{CairoTextExtents}} structure stores metric information for
a font. Values are given in the current user-space coordinate
system.
  
Because font metrics are in user-space coordinates, they are
mostly, but not entirely, independent of the current transformation
matrix. If you call \code{cairo_scale(cr, 2.0, 2.0)},
text will be drawn twice as big, but the reported text extents will
not be doubled. They will change slightly due to hinting (so you
can't assume that metrics are independent of the transformation
matrix), but otherwise will remain unchanged.  

\describe{
\item{\code{ascent}}{[numeric]  the distance that the font extends above the baseline.
         Note that this is not always exactly equal to the maximum
         of the extents of all the glyphs in the font, but rather
         is picked to express the font designer's intent as to
         how the font should align with elements above it.}
\item{\code{descent}}{[numeric]  the distance that the font extends below the baseline.
          This value is positive for typical fonts that include
          portions below the baseline. Note that this is not always
          exactly equal to the maximum of the extents of all the
          glyphs in the font, but rather is picked to express the
          font designer's intent as to how the the font should
          align with elements below it.}
\item{\code{height}}{[numeric]  the recommended vertical distance between baselines when
         setting consecutive lines of text with the font. This
         is greater than \code{ascent}+\code{descent} by a
         quantity known as the \dfn{line spacing}
         or \dfn{external leading}. When space
         is at a premium, most fonts can be set with only
         a distance of \code{ascent}+\code{descent} between lines.}
\item{\code{maxXAdvance}}{[numeric]  the maximum distance in the X direction that 
        the the origin is advanced for any glyph in the font.}
\item{\code{maxYAdvance}}{[numeric]  the maximum distance in the Y direction that
        the the origin is advanced for any glyph in the font.
        this will be zero for normal fonts used for horizontal
        writing. (The scripts of East Asia are sometimes written
        vertically.)}
}

}
\item{\code{CairoTextExtents}}{
The \code{\link{CairoTextExtents}} structure stores the extents of a single
glyph or a string of glyphs in user-space coordinates. Because text
extents are in user-space coordinates, they are mostly, but not
entirely, independent of the current transformation matrix. If you call
\code{cairo_scale(cr, 2.0, 2.0)}, text will
be drawn twice as big, but the reported text extents will not be
doubled. They will change slightly due to hinting (so you can't
assume that metrics are independent of the transformation matrix),
but otherwise will remain unchanged.  

\describe{
\item{\code{xBearing}}{[numeric]  the horizontal distance from the origin to the
  leftmost part of the glyphs as drawn. Positive if the
  glyphs lie entirely to the right of the origin.}
\item{\code{yBearing}}{[numeric]  the vertical distance from the origin to the
  topmost part of the glyphs as drawn. Positive only if the
  glyphs lie completely below the origin; will usually be
  negative.}
\item{\code{width}}{[numeric]  width of the glyphs as drawn}
\item{\code{height}}{[numeric]  height of the glyphs as drawn}
\item{\code{xAdvance}}{[numeric] distance to advance in the X direction
   after drawing these glyphs}
\item{\code{yAdvance}}{[numeric]  distance to advance in the Y direction
  after drawing these glyphs. Will typically be zero except
  for vertical text layout as found in East-Asian languages.}
}

}
}}
\section{Convenient Construction}{\code{cairoScaledFont} is the equivalent of \code{\link{cairoScaledFontCreate}}.}
\references{\url{http://www.cairographics.org/manual/cairo-Scaled-Fonts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
