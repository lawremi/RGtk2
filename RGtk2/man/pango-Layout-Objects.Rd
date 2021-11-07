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
\description{High-level layout driver objects}
\section{Methods and Functions}{
\code{\link{pangoLayoutNew}(context)}\cr
\code{\link{pangoLayoutCopy}(object)}\cr
\code{\link{pangoLayoutGetContext}(object)}\cr
\code{\link{pangoLayoutContextChanged}(object)}\cr
\code{\link{pangoLayoutSetText}(object, text, length = -1)}\cr
\code{\link{pangoLayoutGetText}(object)}\cr
\code{\link{pangoLayoutSetMarkup}(object, markup, length = -1)}\cr
\code{\link{pangoLayoutSetMarkupWithAccel}(object, markup, accel.marker)}\cr
\code{\link{pangoLayoutSetAttributes}(object, attrs)}\cr
\code{\link{pangoLayoutGetAttributes}(object)}\cr
\code{\link{pangoLayoutSetFontDescription}(object, desc = NULL)}\cr
\code{\link{pangoLayoutGetFontDescription}(object)}\cr
\code{\link{pangoLayoutSetWidth}(object, width)}\cr
\code{\link{pangoLayoutGetWidth}(object)}\cr
\code{\link{pangoLayoutSetHeight}(object, height)}\cr
\code{\link{pangoLayoutGetHeight}(object)}\cr
\code{\link{pangoLayoutSetWrap}(object, wrap)}\cr
\code{\link{pangoLayoutGetWrap}(object)}\cr
\code{\link{pangoLayoutIsWrapped}(object)}\cr
\code{\link{pangoLayoutSetEllipsize}(object, ellipsize)}\cr
\code{\link{pangoLayoutGetEllipsize}(object)}\cr
\code{\link{pangoLayoutIsEllipsized}(object)}\cr
\code{\link{pangoLayoutSetIndent}(object, indent)}\cr
\code{\link{pangoLayoutGetIndent}(object)}\cr
\code{\link{pangoLayoutGetSpacing}(object)}\cr
\code{\link{pangoLayoutSetSpacing}(object, spacing)}\cr
\code{\link{pangoLayoutSetJustify}(object, justify)}\cr
\code{\link{pangoLayoutGetJustify}(object)}\cr
\code{\link{pangoLayoutSetAutoDir}(object, auto.dir)}\cr
\code{\link{pangoLayoutGetAutoDir}(object)}\cr
\code{\link{pangoLayoutSetAlignment}(object, alignment)}\cr
\code{\link{pangoLayoutGetAlignment}(object)}\cr
\code{\link{pangoLayoutSetTabs}(object, tabs = NULL)}\cr
\code{\link{pangoLayoutGetTabs}(object)}\cr
\code{\link{pangoLayoutSetSingleParagraphMode}(object, setting)}\cr
\code{\link{pangoLayoutGetSingleParagraphMode}(object)}\cr
\code{\link{pangoLayoutGetUnknownGlyphsCount}(object)}\cr
\code{\link{pangoLayoutGetLogAttrs}(object)}\cr
\code{\link{pangoLayoutIndexToPos}(object, index, pos)}\cr
\code{\link{pangoLayoutIndexToLineX}(object, index., trailing)}\cr
\code{\link{pangoLayoutXyToIndex}(object, x, y)}\cr
\code{\link{pangoLayoutGetCursorPos}(object, index)}\cr
\code{\link{pangoLayoutMoveCursorVisually}(object, strong, old.index, old.trailing, direction)}\cr
\code{\link{pangoLayoutGetExtents}(object)}\cr
\code{\link{pangoLayoutGetPixelExtents}(object)}\cr
\code{\link{pangoLayoutGetSize}(object)}\cr
\code{\link{pangoLayoutGetPixelSize}(object)}\cr
\code{\link{pangoLayoutGetBaseline}(object)}\cr
\code{\link{pangoLayoutGetLineCount}(object)}\cr
\code{\link{pangoLayoutGetLine}(object, line)}\cr
\code{\link{pangoLayoutGetLineReadonly}(object, line)}\cr
\code{\link{pangoLayoutGetLines}(object)}\cr
\code{\link{pangoLayoutGetLinesReadonly}(object)}\cr
\code{\link{pangoLayoutGetIter}(object)}\cr
\code{\link{pangoLayoutIterNextRun}(object)}\cr
\code{\link{pangoLayoutIterNextChar}(object)}\cr
\code{\link{pangoLayoutIterNextCluster}(object)}\cr
\code{\link{pangoLayoutIterNextLine}(object)}\cr
\code{\link{pangoLayoutIterAtLastLine}(object)}\cr
\code{\link{pangoLayoutIterGetIndex}(object)}\cr
\code{\link{pangoLayoutIterGetBaseline}(object)}\cr
\code{\link{pangoLayoutIterGetRun}(object)}\cr
\code{\link{pangoLayoutIterGetRunReadonly}(object)}\cr
\code{\link{pangoLayoutIterGetLine}(object)}\cr
\code{\link{pangoLayoutIterGetLineReadonly}(object)}\cr
\code{\link{pangoLayoutIterGetLayout}(iter)}\cr
\code{\link{pangoLayoutIterGetCharExtents}(object)}\cr
\code{\link{pangoLayoutIterGetClusterExtents}(object)}\cr
\code{\link{pangoLayoutIterGetRunExtents}(object)}\cr
\code{\link{pangoLayoutIterGetLineYrange}(object)}\cr
\code{\link{pangoLayoutIterGetLineExtents}(object)}\cr
\code{\link{pangoLayoutIterGetLayoutExtents}(object)}\cr
\code{\link{pangoLayoutLineGetExtents}(object)}\cr
\code{\link{pangoLayoutLineGetPixelExtents}(object)}\cr
\code{\link{pangoLayoutLineIndexToX}(object, index, trailing)}\cr
\code{\link{pangoLayoutLineXToIndex}(object, x.pos)}\cr
\code{\link{pangoLayoutLineGetXRanges}(object, start.index, end.index)}\cr
\code{pangoLayout(context)}
}
\section{Hierarchy}{\preformatted{GObject
   +----PangoLayout}}
\section{Detailed Description}{While complete access to the layout capabilities of Pango is provided
using the detailed interfaces for itemization and shaping, using
that functionality directly involves writing a fairly large amount
of code. The objects and functions in this section provide a
high-level driver for formatting entire paragraphs of text
at once.}
\section{Structures}{\describe{
\item{\verb{PangoLayout}}{
The \code{\link{PangoLayout}} structure represents an entire paragraph
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
\item{\verb{PangoLayoutIter}}{
A \code{\link{PangoLayoutIter}} structure can be used to
iterate over the visual extents of a \code{\link{PangoLayout}}.
  
The \code{\link{PangoLayoutIter}} structure is opaque, and
has no user-visible fields.

}
\item{\verb{PangoLayoutLine}}{
The \code{\link{PangoLayoutLine}} structure represents one of the lines resulting
from laying out a paragraph via \code{\link{PangoLayout}}. \code{\link{PangoLayoutLine}}
structures are obtained by calling \code{\link{pangoLayoutGetLine}} and
are only valid until the text, attributes, or settings of the
parent \code{\link{PangoLayout}} are modified.
  
Routines for rendering PangoLayout objects are provided in
code specific to each rendering system.

\describe{
\item{\verb{layout}}{[\code{\link{PangoLayout}}] the parent layout for this line}
\item{\verb{startIndex}}{[integer] the start of the line as byte index into \code{layout->text}}
\item{\verb{length}}{[integer] the length of the line in bytes}
\item{\verb{runs}}{[list] a list containing the runs of the line in visual order}
\item{\verb{isParagraphStart}}{[numeric] \code{TRUE} if this is the first line of the paragraph}
\item{\verb{resolvedDir}}{[numeric] the resolved \code{\link{PangoDirection}} of the line}
}

}
}}
\section{Convenient Construction}{\code{pangoLayout} is the equivalent of \code{\link{pangoLayoutNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{PangoWrapMode}}{
A \code{\link{PangoWrapMode}} describes how to wrap the lines of a \code{\link{PangoLayout}} to the desired width.

\describe{
\item{\verb{word}}{wrap lines at word boundaries.}
\item{\verb{char}}{wrap lines at character boundaries.}
}

}
\item{\verb{PangoEllipsizeMode}}{
The \code{\link{PangoEllipsizeMode}} type describes what sort of (if any)
ellipsization should be applied to a line of text. In
the ellipsization process characters are removed from the
text in order to make it fit to a given width and replaced
with an ellipsis.  

\describe{
\item{\verb{none}}{ No ellipsization}
\item{\verb{start}}{ Omit characters at the start of the text}
\item{\verb{middle}}{ Omit characters in the middle of the text}
\item{\verb{end}}{ Omit characters at the end of the text}
}

}
\item{\verb{PangoAlignment}}{
A \code{\link{PangoAlignment}} describes how to align the lines of a \code{\link{PangoLayout}} within the
available space. If the \code{\link{PangoLayout}} is set to justify
using \code{\link{pangoLayoutSetJustify}}, this only has effect for partial lines.

\describe{
\item{\verb{left}}{Put all available space on the right}
\item{\verb{center}}{Center the line within the available space}
\item{\verb{right}}{Put all available space on the left}
}

}
}}
\references{\url{https://docs.gtk.org/Pango/}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
