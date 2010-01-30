\alias{pango-Glyph-Storage}
\alias{PangoRectangle}
\alias{PangoMatrix}
\alias{PangoGlyphInfo}
\alias{PangoGlyphGeometry}
\alias{PangoGlyphVisAttr}
\alias{PangoGlyphString}
\alias{PangoGlyphItem}
\name{pango-Glyph-Storage}
\title{Glyph Storage}
\description{Structures for storing information about glyphs}
\section{Methods and Functions}{
\code{\link{pangoUnitsToDouble}(i)}\cr
\code{\link{pangoUnitsFromDouble}(d)}\cr
\code{\link{pangoExtentsToPixels}(inclusive, nearest)}\cr
\code{\link{pangoMatrixCopy}(object)}\cr
\code{\link{pangoMatrixTranslate}(object, tx, ty)}\cr
\code{\link{pangoMatrixScale}(object, scale.x, scale.y)}\cr
\code{\link{pangoMatrixRotate}(object, degrees)}\cr
\code{\link{pangoMatrixConcat}(object, new.matrix)}\cr
\code{\link{pangoMatrixTransformPoint}(object, x, y)}\cr
\code{\link{pangoMatrixTransformDistance}(object, dx, dy)}\cr
\code{\link{pangoMatrixTransformRectangle}(object, rect)}\cr
\code{\link{pangoMatrixTransformPixelRectangle}(object, rect)}\cr
\code{\link{pangoMatrixGetFontScaleFactor}(object)}\cr
\code{\link{pangoGlyphStringNew}()}\cr
\code{\link{pangoGlyphStringCopy}(object)}\cr
\code{\link{pangoGlyphStringSetSize}(object, new.len)}\cr
\code{\link{pangoGlyphStringExtents}(object, font)}\cr
\code{\link{pangoGlyphStringExtentsRange}(object, start, end, font)}\cr
\code{\link{pangoGlyphStringGetWidth}(object)}\cr
\code{\link{pangoGlyphStringIndexToX}(object, text, analysis, index, trailing)}\cr
\code{\link{pangoGlyphStringXToIndex}(object, text, analysis, x.pos)}\cr
\code{\link{pangoGlyphStringGetLogicalWidths}(object, text, embedding.level)}\cr
\code{\link{pangoGlyphItemSplit}(orig, text, split.index)}\cr
\code{\link{pangoGlyphItemApplyAttrs}(glyph.item, text, list)}\cr
\code{\link{pangoGlyphItemLetterSpace}(glyph.item, text, log.attrs)}\cr
}
\section{Detailed Description}{\code{\link{pangoShape}} produces a string of glyphs which
can be measured or drawn to the screen. The following
structures are used to store information about
glyphs.}
\section{Structures}{\describe{
\item{\verb{PangoRectangle}}{
The \verb{\link{PangoRectangle}} structure represents a rectangle. It is frequently
used to represent the logical or ink extents of a single glyph or section
of text. (See, for instance, \code{\link{pangoFontGetGlyphExtents}})
\strong{\verb{PangoRectangle} is a \link{transparent-type}.}

\describe{
\item{\code{x}}{[integer] X coordinate of the left side of the rectangle.}
\item{\code{y}}{[integer] Y coordinate of the the top side of the rectangle.}
\item{\code{width}}{[integer] width of the rectangle.}
\item{\code{height}}{[integer] height of the rectangle.}
}

}
\item{\verb{PangoMatrix}}{
A structure specifying a transformation between user-space
coordinates and device coordinates. The transformation
is given by
  \preformatted{x_device = x_user * matrix->xx + y_user * matrix->xy + matrix->x0;
y_device = x_user * matrix->yx + y_user * matrix->yy + matrix->y0;
}  

  Since  1.6

\describe{
\item{\code{xx}}{[numeric]  1st component of the transformation matrix}
\item{\code{xy}}{[numeric]  2nd component of the transformation matrix}
\item{\code{yx}}{[numeric]  3rd component of the transformation matrix}
\item{\code{yy}}{[numeric]  4th component of the transformation matrix}
\item{\code{x0}}{[numeric]  x translation}
\item{\code{y0}}{[numeric]  y translation}
}

}
\item{\verb{PangoGlyphInfo}}{
The \verb{\link{PangoGlyphInfo}} structure represents a single glyph together with
positioning information and visual attributes.
It contains the following fields.

\describe{
\item{\verb{glyph}}{[numeric] the glyph itself.}
\item{\verb{geometry}}{[\verb{\link{PangoGlyphGeometry}}] the positional information about the glyph.}
\item{\verb{attr}}{[\verb{\link{PangoGlyphVisAttr}}] the visual attributes of the glyph.}
}

}
\item{\verb{PangoGlyphGeometry}}{
The \verb{\link{PangoGlyphGeometry}} structure contains width and positioning
information for a single glyph. 

\describe{
\item{\verb{width}}{[integer] the logical width to use for the the character.}
\item{\verb{xOffset}}{[integer] horizontal offset from nominal character position.}
\item{\verb{yOffset}}{[integer] vertical offset from nominal character position.}
}

}
\item{\verb{PangoGlyphVisAttr}}{
The PangoGlyphVisAttr is used to communicate information between
the shaping phase and the rendering phase.  More attributes may be
added in the future.

\describe{\item{\verb{isClusterStart}}{[numeric] set for the first logical glyph in each cluster. (Clusters
		   are stored in visual order, within the cluster, glyphs
		   are always ordered in logical order, since visual
		   order is meaningless; that is, in Arabic text, accent glyphs
		   follow the glyphs for the base character.)}}

}
\item{\verb{PangoGlyphString}}{
The \verb{\link{PangoGlyphString}} structure is used to store strings
of glyphs with geometry and visual attribute information.
The storage for the glyph information is owned
by the structure which simplifies memory management.

\describe{
\item{\verb{numGlyphs}}{[integer] the number of glyphs in the string.}
\item{\verb{glyphs}}{[\verb{\link{PangoGlyphInfo}}] a list of \verb{\link{PangoGlyphInfo}} structures of length \code{num_glyphs}.}
\item{\verb{logClusters}}{[integer] for each glyph, byte index of the starting character for the
cluster. The indices are relative to the start of the text
corresponding to the PangoGlyphString.}
}

}
\item{\verb{PangoGlyphItem}}{
A \verb{\link{PangoGlyphItem}} is a pair of a \verb{\link{PangoItem}} and the glyphs
resulting from shaping the text corresponding to an item.
As an example of the usage of \verb{\link{PangoGlyphItem}}, the results
of shaping text with \verb{\link{PangoLayout}} is a list of \verb{\link{PangoLayoutLine}},
each of which contains a list of \verb{\link{PangoGlyphItem}}.

\describe{
\item{\verb{item}}{[\verb{\link{PangoItem}}] a \verb{\link{PangoItem}} structure that provides information
       about a segment of text.}
\item{\verb{glyphs}}{[\verb{\link{PangoGlyphString}}] the glyphs obtained by shaping the text
         corresponding to \code{item}.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Glyph-Storage.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
