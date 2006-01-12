\alias{pango-Layout-Objects}
\alias{PangoLayout}
\alias{PangoLayoutIter}
\alias{PangoLayoutLine}
\alias{pangoLayout}
\alias{PangoWrapMode}
\alias{PangoEllipsizeMode}
\alias{PangoAlignment}
\name{pango-Layout-Objects}
\title{Layout Objects}
\description{Highlevel layout driver objects}
\usage{
\link{pangoLayoutNew}(context)
\link{pangoLayoutCopy}(object)
\link{pangoLayoutGetContext}(object)
\link{pangoLayoutContextChanged}(object)
\link{pangoLayoutSetText}(object, text, length = -1)
\link{pangoLayoutGetText}(object)
\link{pangoLayoutSetMarkup}(object, markup, length = -1)
\link{pangoLayoutSetMarkupWithAccel}(object, markup, accel.marker)
\link{pangoLayoutSetAttributes}(object, attrs)
\link{pangoLayoutGetAttributes}(object)
\link{pangoLayoutSetFontDescription}(object, desc = NULL)
\link{pangoLayoutGetFontDescription}(object)
\link{pangoLayoutSetWidth}(object, width)
\link{pangoLayoutGetWidth}(object)
\link{pangoLayoutSetWrap}(object, wrap)
\link{pangoLayoutGetWrap}(object)
\link{pangoLayoutSetEllipsize}(object, ellipsize)
\link{pangoLayoutGetEllipsize}(object)
\link{pangoLayoutSetIndent}(object, indent)
\link{pangoLayoutGetIndent}(object)
\link{pangoLayoutGetSpacing}(object)
\link{pangoLayoutSetSpacing}(object, spacing)
\link{pangoLayoutSetJustify}(object, justify)
\link{pangoLayoutGetJustify}(object)
\link{pangoLayoutSetAutoDir}(object, auto.dir)
\link{pangoLayoutGetAutoDir}(object)
\link{pangoLayoutSetAlignment}(object, alignment)
\link{pangoLayoutGetAlignment}(object)
\link{pangoLayoutSetTabs}(object, tabs = NULL)
\link{pangoLayoutGetTabs}(object)
\link{pangoLayoutSetSingleParagraphMode}(object, setting)
\link{pangoLayoutGetSingleParagraphMode}(object)
\link{pangoLayoutGetLogAttrs}(object)
\link{pangoLayoutXyToIndex}(object, x, y)
\link{pangoLayoutIndexToPos}(object, index, pos)
\link{pangoLayoutGetCursorPos}(object, index)
\link{pangoLayoutMoveCursorVisually}(object, strong, old.index, old.trailing, direction)
\link{pangoLayoutGetExtents}(object)
\link{pangoLayoutGetPixelExtents}(object)
\link{pangoLayoutGetSize}(object)
\link{pangoLayoutGetPixelSize}(object)
\link{pangoLayoutGetLineCount}(object)
\link{pangoLayoutGetLine}(object, line)
\link{pangoLayoutGetLines}(object)
\link{pangoLayoutGetIter}(object)
\link{pangoLayoutIterNextRun}(object)
\link{pangoLayoutIterNextChar}(object)
\link{pangoLayoutIterNextCluster}(object)
\link{pangoLayoutIterNextLine}(object)
\link{pangoLayoutIterAtLastLine}(object)
\link{pangoLayoutIterGetIndex}(object)
\link{pangoLayoutIterGetBaseline}(object)
\link{pangoLayoutIterGetRun}(object)
\link{pangoLayoutIterGetLine}(object)
\link{pangoLayoutIterGetCharExtents}(object)
\link{pangoLayoutIterGetClusterExtents}(object)
\link{pangoLayoutIterGetRunExtents}(object)
\link{pangoLayoutIterGetLineYrange}(object)
\link{pangoLayoutIterGetLineExtents}(object)
\link{pangoLayoutIterGetLayoutExtents}(object)
\link{pangoLayoutLineGetExtents}(object)
\link{pangoLayoutLineGetPixelExtents}(object)
\link{pangoLayoutLineIndexToX}(object, index, trailing)
\link{pangoLayoutLineXToIndex}(object, x.pos)
\link{pangoLayoutLineGetXRanges}(object, start.index, end.index)
pangoLayout(context)
}
\details{While complete access to the layout capabilities of Pango is provided
using the detailed interfaces for itemization and shaping, using
that functionality directly involves writing a fairly large amount
of code. The objects and functions in this structure provide a
high-level driver for formatting entire paragraphs of text
at once.}
\section{Structures}{\describe{
\item{\code{PangoLayout}}{
The \code{\link{PangoLayout}} structure represents and entire paragraph
of text. It is initialized with a \code{\link{PangoContext}}, UTF-8 string
and set of attributes for that string. Once that is done, the
set of formatted lines can be extracted from the object,
the layout can be rendered, and conversion between logical
character positions within the layout's text, and the physical
position of the resulting glyphs can be made.
  
There are also a number of parameters to adjust the formatting
of a \code{\link{PangoLayout}}, which are illustrated in .
It is possible, as well, to ignore the 2-D setup, and simply
treat the results of a \code{\link{PangoLayout}} as a list of lines.
  
The \code{\link{PangoLayout}} structure is opaque, and has no user-visible
fields.

}
\item{\code{PangoLayoutIter}}{
A \code{PangoLayoutIter} structure can be used to
iterate over the visual extents of a \code{\link{PangoLayout}}. 
  
The \code{PangoLayoutIter} structure is opaque, and 
has no user-visible fields.

}
\item{\code{PangoLayoutLine}}{
The \code{\link{PangoLayoutLine}} structure represents one of the lines resulting
from laying out a paragraph via \code{\link{PangoLayout}}. \code{\link{PangoLayoutLine}}
structures are obtained by calling \code{\link{pangoLayoutGetLine}} and
are only valid until the text, attributes, or settings of the
parent \code{\link{PangoLayout}} are modified.
  
Routines for rendering PangoLayout objects are provided in
code specific to each rendering system.

\describe{
\item{\code{layout}}{[\code{\link{PangoLayout}}] the parent layout for this line.}
\item{\code{startIndex}}{[integer] the start of the line as byte index into \code{layout->text}.}
\item{\code{length}}{[integer] the length of the line in bytes.}
\item{\code{runs}}{[list] a list containing the runs of the line in visual order.}
\item{\code{isParagraphStart}}{[numeric] \code{TRUE} if this is the first line of the paragraph.}
\item{\code{resolvedDir}}{[numeric] }
}

}
}}
\section{Convenient Construction}{\code{pangoLayout} is the equivalent of \code{\link{pangoLayoutNew}}.}
\section{Enums and Flags}{\describe{
\item{\code{enum PangoWrapMode}}{
A PangoWrapMode describes how to wrap the lines of a \code{\link{PangoLayout}} to the desired width.

\describe{
\item{\code{PANGO_WRAP_WORD (word)}}{wrap lines at word boundaries.}
\item{\code{PANGO_WRAP_CHAR (char)}}{wrap lines at character boundaries.}
}

}
\item{\code{enum PangoEllipsizeMode}}{
The \code{\link{PangoEllipsizeMode}} type describes what sort of (if any)
ellipsization should be applied to a line of text. In
the ellipsization process characters are removed from the
text in order to make it fit to a given width and replaced
with an ellipsis.  

\describe{
\item{\code{PANGO_ELLIPSIZE_NONE (none)}}{ No ellipsization}
\item{\code{PANGO_ELLIPSIZE_START (start)}}{ Omit characters at the start of the text}
\item{\code{PANGO_ELLIPSIZE_MIDDLE (middle)}}{ Omit characters in the middle of the text}
\item{\code{PANGO_ELLIPSIZE_END (end)}}{ Omit characters at the end of the text}
}

}
\item{\code{enum PangoAlignment}}{
A PangoAlignment describes how to align the lines of a \code{\link{PangoLayout}} within the
available space. If the \code{\link{PangoLayout}} is set to justify
using \code{\link{pangoLayoutSetJustify}}, then this only has an effect
for partial lines.

\describe{
\item{\code{PANGO_ALIGN_LEFT (left)}}{Put all available space on the right}
\item{\code{PANGO_ALIGN_CENTER (center)}}{Center the line within the available space}
\item{\code{PANGO_ALIGN_RIGHT (right)}}{Put all available space on the left}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Layout-Objects.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
