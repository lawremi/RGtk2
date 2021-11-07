\alias{pango-Glyph-Storage}
\alias{PangoRectangle}
\alias{PangoMatrix}
\alias{PangoGlyphInfo}
\alias{PangoGlyphGeometry}
\alias{PangoGlyphVisAttr}
\alias{PangoGlyphString}
\alias{PangoGlyphItem}
\alias{PangoGlyphItemIter}
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
\code{\link{pangoGlyphItemGetLogicalWidths}(glyph.item, text)}\cr
\code{\link{pangoGlyphItemIterInitStart}(object, glyph.item, text)}\cr
\code{\link{pangoGlyphItemIterInitEnd}(object, glyph.item, text)}\cr
\code{\link{pangoGlyphItemIterNextCluster}(object)}\cr
\code{\link{pangoGlyphItemIterPrevCluster}(object)}\cr
}
\section{Detailed Description}{\code{\link{pangoShape}} produces a string of glyphs which
can be measured or drawn to the screen. The following
structures are used to store information about
glyphs.}
\section{Structures}{\describe{
\item{\verb{PangoRectangle}}{
The \code{\link{PangoRectangle}} structure represents a rectangle. It is frequently
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
  Since 1.6

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
The \code{\link{PangoGlyphInfo}} structure represents a single glyph together with
positioning information and visual attributes.
It contains the following fields.

\describe{
\item{\verb{glyph}}{[numeric] the glyph itself.}
\item{\verb{geometry}}{[\code{\link{PangoGlyphGeometry}}] the positional information about the glyph.}
\item{\verb{attr}}{[\code{\link{PangoGlyphVisAttr}}] the visual attributes of the glyph.}
}

}
\item{\verb{PangoGlyphGeometry}}{
The \code{\link{PangoGlyphGeometry}} structure contains width and positioning
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
The \code{\link{PangoGlyphString}} structure is used to store strings
of glyphs with geometry and visual attribute information.
The storage for the glyph information is owned
by the structure which simplifies memory management.

\describe{
\item{\verb{numGlyphs}}{[integer] the number of glyphs in the string.}
\item{\verb{glyphs}}{[\code{\link{PangoGlyphInfo}}] a list of \code{\link{PangoGlyphInfo}} structures of length \code{num_glyphs}.}
\item{\verb{logClusters}}{[integer] for each glyph, byte index of the starting character for the
cluster. The indices are relative to the start of the text
corresponding to the PangoGlyphString.}
}

}
\item{\verb{PangoGlyphItem}}{
A \code{\link{PangoGlyphItem}} is a pair of a \code{\link{PangoItem}} and the glyphs
resulting from shaping the text corresponding to an item.
As an example of the usage of \code{\link{PangoGlyphItem}}, the results
of shaping text with \code{\link{PangoLayout}} is a list of \code{\link{PangoLayoutLine}},
each of which contains a list of \code{\link{PangoGlyphItem}}.

\describe{
\item{\verb{item}}{[\code{\link{PangoItem}}] a \code{\link{PangoItem}} structure that provides information
       about a segment of text.}
\item{\verb{glyphs}}{[\code{\link{PangoGlyphString}}] the glyphs obtained by shaping the text
         corresponding to \code{item}.}
}

}
\item{\verb{PangoGlyphItemIter}}{
A \code{\link{PangoGlyphItemIter}} is an iterator over the clusters in a
\code{\link{PangoGlyphItem}}.  The \dfn{forward direction} of the
iterator is the logical direction of text.  That is, with increasing
\code{start.index} and \code{start.char} values.  If \code{glyph.item} is right-to-left
(that is, if \code{glyph_item->item->analysis.level} is odd),
then \code{start.glyph} decreases as the iterator moves forward.  Moreover,
in right-to-left cases, \code{start.glyph} is greater than \code{end.glyph}.
An iterator should be initialized using either of
\code{\link{pangoGlyphItemIterInitStart}} and
\code{\link{pangoGlyphItemIterInitEnd}}, for forward and backward iteration
respectively, and walked over using any desired mixture of
\code{\link{pangoGlyphItemIterNextCluster}} and
\code{\link{pangoGlyphItemIterPrevCluster}}.  A common idiom for doing a
forward iteration over the clusters is:
\preformatted{PangoGlyphItemIter cluster_iter;
gboolean have_cluster;
for (have_cluster = pango_glyph_item_iter_init_start (&cluster_iter,
                                                      glyph_item, text);
     have_cluster;
     have_cluster = pango_glyph_item_iter_next_cluster (&cluster_iter))
{
  ...
}
}
Note that \code{text} is the start of the text for layout, which is then
indexed by \code{glyph_item->item->offset} to get to the
text of \code{glyph.item}.  The \code{start.index} and \code{end.index} values can directly
index into \code{text}.  The \code{start.glyph}, \code{end.glyph}, \code{start.char}, and \code{end.char}
values however are zero-based for the \code{glyph.item}.  For each cluster, the
item pointed at by the start variables is included in the cluster while
the one pointed at by end variables is not.
None of the members of a \code{\link{PangoGlyphItemIter}} should be modified manually.
  Since 1.22

\describe{
\item{\code{glyph_item}}{[\code{\link{PangoGlyphItem}}] the \code{\link{PangoGlyphItem}} this iterator iterates over}
\item{\code{text}}{[character] the UTF-8 text that \code{glyph.item} refers to}
\item{\code{start_glyph}}{[integer] starting glyph of the cluster}
\item{\code{start_index}}{[integer] starting text index of the cluster}
\item{\code{start_char}}{[integer] starting number of characters of the cluster}
\item{\code{end_glyph}}{[integer] ending glyph of the cluster}
\item{\code{end_index}}{[integer] ending text index of the cluster}
\item{\code{end_char}}{[integer] ending number of characters of the cluster}
}

}
}}
\references{\url{https://docs.gtk.org/Pango/}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
