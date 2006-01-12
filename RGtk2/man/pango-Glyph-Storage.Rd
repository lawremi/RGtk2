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
\usage{
\link{pangoMatrixCopy}(object)
\link{pangoMatrixTranslate}(object, tx, ty)
\link{pangoMatrixScale}(object, scale.x, scale.y)
\link{pangoMatrixRotate}(object, degrees)
\link{pangoMatrixConcat}(object, new.matrix)
\link{pangoGlyphStringNew}()
\link{pangoGlyphStringCopy}(object)
\link{pangoGlyphStringSetSize}(object, new.len)
\link{pangoGlyphStringExtents}(object, font)
\link{pangoGlyphStringExtentsRange}(object, start, end, font)
\link{pangoGlyphStringIndexToX}(object, text, analysis, index, trailing)
\link{pangoGlyphStringXToIndex}(object, text, analysis, x.pos)
\link{pangoGlyphStringGetLogicalWidths}(object, text, embedding.level)
\link{pangoGlyphItemSplit}(orig, text, split.index)
\link{pangoGlyphItemApplyAttrs}(glyph.item, text, list)
\link{pangoGlyphItemLetterSpace}(glyph.item, text, log.attrs, letter.spacing)
}
\details{\code{\link{pangoShape}} produces a string of glyphs which
can be measured or drawn to the screen. The following
structures are used to store information about
glyphs.}
\section{Structures}{\describe{
\item{\code{PangoRectangle}}{
The \code{\link{PangoRectangle}} structure represents a rectangle. It is frequently
used to represent the logical or ink extents of a single glyph or section
of text. (See, for instance, \code{\link{pangoFontGetGlyphExtents}})
\strong{\code{PangoRectangle} is a \link{transparent-type}.}

\describe{
\item{\code{x}}{[integer] X coordinate of the left side of the rectangle.}
\item{\code{y}}{[integer] Y coordinate of the the top side of the rectangle.}
\item{\code{width}}{[integer] width of the rectangle.}
\item{\code{height}}{[integer] height of the rectangle.}
}

}
\item{\code{PangoMatrix}}{
A structure specifying a transformation between user-space
coordinates and device coordinates. The transformation
is given by
  
\preformatted{x_device = x_user * matrix->xx + y_user * matrix->xy + matrix->x0;
y_device = x_user * matrix->yx + y_user * matrix->yy + matrix->y0;}  

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
\item{\code{PangoGlyphInfo}}{
The \code{\link{PangoGlyphInfo}} structure represents a single glyph together with
positioning information and visual attributes.
It contains the following fields.

\describe{
\item{\code{glyph}}{[numeric] the glyph itself.}
\item{\code{geometry}}{[\code{\link{PangoGlyphGeometry}}] the positional information about the glyph.}
\item{\code{attr}}{[\code{\link{PangoGlyphVisAttr}}] the visual attributes of the glyph.}
}

}
\item{\code{PangoGlyphGeometry}}{
The \code{\link{PangoGlyphGeometry}} structure contains width and positioning
information for a single glyph. 

\describe{
\item{\code{width}}{[integer] the logical width to use for the the character.}
\item{\code{xOffset}}{[integer] horizontal offset from nominal character position.}
\item{\code{yOffset}}{[integer] vertical offset from nominal character position.}
}

}
\item{\code{PangoGlyphVisAttr}}{
The PangoGlyphVisAttr is used to communicate information between
the shaping phase and the rendering phase. It's contents
are still evolving.

\tabular{ll}{\code{numeric}   is_cluster_start : 1; \tab set for the first logical glyph in each cluster. (Clusters
       are stored in visual order, within the cluster, glyphs
       are always ordered in logical order, since visual
       order is meaningless; that is, in Arabic text, accent glyphs
       follow the glyphs for the base character.) \cr}

}
\item{\code{PangoGlyphString}}{
The \code{\link{PangoGlyphString}} structure is used to store strings
of glyphs with geometry and visual attribute information.
The storage for the glyph information is owned
by the structure which simplifies memory management.

\describe{
\item{\code{num_glyphs}}{[integer] the number of glyphs in the string.}
\item{\code{glyphs}}{[\code{\link{PangoGlyphInfo}}] a list of \code{\link{PangoGlyphInfo}} structures of length \code{num_glyphs}.}
\item{\code{log_clusters}}{[integer] for each glyph, byte index of the starting character for the
cluster. The indices are relative to the start of the text
corresponding to the PangoGlyphString.}
}

}
\item{\code{PangoGlyphItem}}{
A \code{\link{PangoGlyphItem}} is a pair of a \code{\link{PangoItem}} and the glyphs
resulting from shaping the text corresponding to an item.
As an example of the usage of \code{\link{PangoGlyphItem}}, the results
of shaping text with \code{\link{PangoLayout}} is a list of \code{\link{PangoLayoutLine}},
each of which contains a list of \code{\link{PangoGlyphItem}}.

\describe{
\item{\code{item}}{[\code{\link{PangoItem}}] a \code{\link{PangoItem}} structure that provides information
       about a segment of text.}
\item{\code{glyphs}}{[\code{\link{PangoGlyphString}}] the glyphs obtained by shaping the text
         corresponding to \code{item}.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Glyph-Storage.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
