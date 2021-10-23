\alias{cairo-text}
\alias{CairoGlyph}
\alias{CairoTextCluster}
\alias{CairoFontSlant}
\alias{CairoFontWeight}
\alias{CairoTextClusterFlags}
\name{cairo-text}
\title{Text}
\description{Rendering text and glyphs}
\section{Methods and Functions}{
\code{\link{cairoSelectFontFace}(cr, family, slant, weight)}\cr
\code{\link{cairoSetFontSize}(cr, size)}\cr
\code{\link{cairoSetFontMatrix}(cr, matrix)}\cr
\code{\link{cairoGetFontMatrix}(cr, matrix)}\cr
\code{\link{cairoSetFontOptions}(cr, options)}\cr
\code{\link{cairoGetFontOptions}(cr)}\cr
\code{\link{cairoSetFontFace}(cr, font.face)}\cr
\code{\link{cairoGetFontFace}(cr)}\cr
\code{\link{cairoSetScaledFont}(cr, scaled.font)}\cr
\code{\link{cairoGetScaledFont}(cr)}\cr
\code{\link{cairoShowText}(cr, utf8)}\cr
\code{\link{cairoShowGlyphs}(cr, glyphs, num.glyphs)}\cr
\code{\link{cairoShowTextGlyphs}(cr, utf8, glyphs, clusters, cluster.flags)}\cr
\code{\link{cairoFontExtents}(cr)}\cr
\code{\link{cairoTextExtents}(cr, utf8)}\cr
\code{\link{cairoGlyphExtents}(cr, glyphs)}\cr
\code{\link{cairoToyFontFaceCreate}(family, slant, weight)}\cr
\code{\link{cairoToyFontFaceGetFamily}(font.face)}\cr
\code{\link{cairoToyFontFaceGetSlant}(font.face)}\cr
\code{\link{cairoToyFontFaceGetWeight}(font.face)}\cr
}
\section{Detailed Description}{Cairo has two sets of text rendering capabilities:
\itemize{
\item 
\item 
}}
\section{Structures}{\describe{
\item{\verb{CairoGlyph}}{
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
\strong{\verb{CairoGlyph} is a \link{transparent-type}.}

\describe{
\item{\verb{index}}{[numeric]  glyph index in the font. The exact interpretation of the
     glyph index depends on the font technology being used.}
\item{\verb{x}}{[numeric]  the offset in the X direction between the origin used for
    drawing or measuring the string and the origin of this glyph.}
\item{\verb{y}}{[numeric]  the offset in the Y direction between the origin used for
    drawing or measuring the string and the origin of this glyph.}
}

}
\item{\verb{CairoTextCluster}}{
The \code{\link{CairoTextCluster}} structure holds information about a single
\dfn{text cluster}.  A text cluster is a minimal
mapping of some glyphs corresponding to some UTF-8 text.
  
For a cluster to be valid, both \code{num.bytes} and \code{num.glyphs} should
be non-negative, and at least one should be non-zero.
Note that clusters with zero glyphs are not as well supported as
normal clusters.  For example, PDF rendering applications typically
ignore those clusters when PDF text is being selected.
  
See \code{\link{cairoShowTextGlyphs}} for how clusters are used in advanced
text operations.  
  Since 1.8
\strong{\verb{CairoTextCluster} is a \link{transparent-type}.}

\describe{
\item{\verb{numBytes}}{[integer]  the number of bytes of UTF-8 text covered by cluster}
\item{\verb{numGlyphs}}{[integer]  the number of glyphs covered by cluster}
}

}
}}
\section{Enums and Flags}{\describe{
\item{\verb{CairoFontSlant}}{
Specifies variants of a font face based on their slant.  

\describe{
\item{\verb{normal}}{ Upright font style}
\item{\verb{italic}}{ Italic font style}
\item{\verb{oblique}}{ Oblique font style}
}

}
\item{\verb{CairoFontWeight}}{
Specifies variants of a font face based on their weight.  

\describe{
\item{\verb{normal}}{ Normal font weight}
\item{\verb{bold}}{ Bold font weight}
}

}
\item{\verb{CairoTextClusterFlags}}{
Specifies properties of a text cluster mapping.  
  Since 1.8

\describe{\item{\verb{backward}}{ The clusters in the cluster list
map to glyphs in the glyph list from end to start.}}

}
}}
\references{\url{https://www.cairographics.org/manual/cairo-text.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
