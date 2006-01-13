\alias{AtkText}
\alias{AtkTextRange}
\alias{AtkTextRectangle}
\alias{AtkAttribute}
\alias{AtkTextBoundary}
\alias{AtkTextClipType}
\alias{AtkTextAttribute}
\name{AtkText}
\title{AtkText}
\description{The ATK interface implemented by components with text content.}
\usage{
\link{atkTextGetText}(object, start.offset, end.offset)
\link{atkTextGetCharacterAtOffset}(object, offset)
\link{atkTextGetTextAfterOffset}(object, offset, boundary.type)
\link{atkTextGetTextAtOffset}(object, offset, boundary.type)
\link{atkTextGetTextBeforeOffset}(object, offset, boundary.type)
\link{atkTextGetCaretOffset}(object)
\link{atkTextGetCharacterExtents}(object, offset, coords)
\link{atkTextGetRunAttributes}(object, offset)
\link{atkTextGetDefaultAttributes}(object)
\link{atkTextGetCharacterCount}(object)
\link{atkTextGetOffsetAtPoint}(object, x, y, coords)
\link{atkTextGetBoundedRanges}(object, rect, coord.type, x.clip.type, y.clip.type)
\link{atkTextGetRangeExtents}(object, start.offset, end.offset, coord.type)
\link{atkTextGetNSelections}(object)
\link{atkTextGetSelection}(object, selection.num)
\link{atkTextAddSelection}(object, start.offset, end.offset)
\link{atkTextRemoveSelection}(object, selection.num)
\link{atkTextSetSelection}(object, selection.num, start.offset, end.offset)
\link{atkTextSetCaretOffset}(object, offset)
\link{atkTextAttributeRegister}(name)
\link{atkTextAttributeGetName}(attr)
\link{atkTextAttributeForName}(name)
\link{atkTextAttributeGetValue}(attr, index)
}
\details{\code{\link{AtkText}} should be implemented by \code{AtkObjects} on behalf of widgets that
have text content which is either attributed or otherwise non-trivial.
\code{AtkObjects} whose text content is simple, unattributed, and very brief
may expose that content via \code{\link{atkObjectGetName}} instead; however if the
text is editable, multi-line, typically longer than three or four words,
attributed, selectable, or if the object already uses the 'name' ATK
property for other information, the \code{\link{AtkText}} interface should be used
to expose the text content.  In the case of editable text content,
\code{\link{AtkEditableText}} (a subtype of the \code{\link{AtkText}} interface) should be
implemented instead.
  
\code{\link{AtkText}} provides not only traversal facilities and change notification
for text content, but also caret tracking and glyph bounding box
calculations.  Note that the text strings are exposed as UTF-8, and are
therefore potentially multi-byte, and caret-to-byte offset mapping makes
no assumptions about the character length; also bounding box
glyph-to-offset mapping may be complex for languages which use ligatures.}
\section{Hierarchy}{\preformatted{  GInterface
   +----AtkText}}
\section{Structures}{\describe{
\item{\code{AtkText}}{
The AtkText structure does not contain any fields.

}
\item{\code{AtkTextRange}}{
A structure used to describe a text range.  
\strong{\code{AtkTextRange} is a \link{transparent-type}.}

\describe{
\item{\code{bounds}}{[\code{\link{AtkTextRectangle}}]  A rectangle giving the bounds of the text range}
\item{\code{start_offset}}{[integer]  The start offset of a AtkTextRange}
\item{\code{end_offset}}{[integer]  The end offset of a AtkTextRange}
\item{\code{content}}{[character]  The text in the text range}
}

}
\item{\code{AtkTextRectangle}}{
A structure used to store a rectangle used by AtkText.  
\strong{\code{AtkTextRectangle} is a \link{transparent-type}.}

\describe{
\item{\code{x}}{[integer]  The horizontal coordinate of a rectangle}
\item{\code{y}}{[integer]  The vertical coordinate of a rectangle}
\item{\code{width}}{[integer]  The width of a rectangle}
\item{\code{height}}{[integer]  The height of a rectangle}
}

}
\item{\code{AtkAttribute}}{
A string name/value pair representing a text attribute.  
\strong{\code{AtkAttribute} is a \link{transparent-type}.}

\describe{
\item{\code{name}}{[character]  The attribute name. Call \code{atkTextAttrGetName()}}
\item{\code{value}}{[character]  the value of the attribute, represented as a string. 
Call \code{atkTextAttrGetValue()} for those which are strings.
For values which are numbers, the string representation of the number 
is in value.}
}

}
}}
\section{Enums and Flags}{\describe{
\item{\code{enum AtkTextBoundary}}{
Text boundary types used for specifying boundaries for regions of text  

\describe{
\item{\code{ATK_TEXT_BOUNDARY_CHAR (char)}}{\emph{undocumented
}}
\item{\code{ATK_TEXT_BOUNDARY_WORD_START (word-start)}}{\emph{undocumented
}}
\item{\code{ATK_TEXT_BOUNDARY_WORD_END (word-end)}}{\emph{undocumented
}}
\item{\code{ATK_TEXT_BOUNDARY_SENTENCE_START (sentence-start)}}{\emph{undocumented
}}
\item{\code{ATK_TEXT_BOUNDARY_SENTENCE_END (sentence-end)}}{\emph{undocumented
}}
\item{\code{ATK_TEXT_BOUNDARY_LINE_START (line-start)}}{\emph{undocumented
}}
\item{\code{ATK_TEXT_BOUNDARY_LINE_END (line-end)}}{\emph{undocumented
}}
}

}
\item{\code{enum AtkTextClipType}}{
Describes the type of clipping required.  

\describe{
\item{\code{ATK_TEXT_CLIP_NONE (none)}}{ No clipping to be done}
\item{\code{ATK_TEXT_CLIP_MIN (min)}}{ Text clipped by min coordinate is omitted}
\item{\code{ATK_TEXT_CLIP_MAX (max)}}{ Text clipped by max coordinate is omitted}
\item{\code{ATK_TEXT_CLIP_BOTH (both)}}{ Only text fully within mix/max bound is retained}
}

}
\item{\code{enum AtkTextAttribute}}{
Describes the text attributes supported  

\describe{
\item{\code{ATK_TEXT_ATTR_INVALID (invalid)}}{ Invalid attribute}
\item{\code{ATK_TEXT_ATTR_LEFT_MARGIN (left-margin)}}{ The pixel width of the left margin}
\item{\code{ATK_TEXT_ATTR_RIGHT_MARGIN (right-margin)}}{ The pixel width of the right margin}
\item{\code{ATK_TEXT_ATTR_INDENT (indent)}}{ The number of pixels that the text is indented}
\item{\code{ATK_TEXT_ATTR_INVISIBLE (invisible)}}{ Either "true" or "false" indicating whether text is visible or not}
\item{\code{ATK_TEXT_ATTR_EDITABLE (editable)}}{ Either "true" or "false" indicating whether text is editable or not}
\item{\code{ATK_TEXT_ATTR_PIXELS_ABOVE_LINES (pixels-above-lines)}}{ Pixels of blank space to leave above each line. }
\item{\code{ATK_TEXT_ATTR_PIXELS_BELOW_LINES (pixels-below-lines)}}{ Pixels of blank space to leave below each line.}
\item{\code{ATK_TEXT_ATTR_PIXELS_INSIDE_WRAP (pixels-inside-wrap)}}{ Pixels of blank space to leave between wrapped lines inside the same line (paragraph).}
\item{\code{ATK_TEXT_ATTR_BG_FULL_HEIGHT (bg-full-height)}}{ "true" or "false" whether to make the background color for each character the height of the highest font used on the current line, or the height of the font used for the current character.}
\item{\code{ATK_TEXT_ATTR_RISE (rise)}}{ Number of pixels that the characters are risen above the baseline}
\item{\code{ATK_TEXT_ATTR_UNDERLINE (underline)}}{ "none", "single", "double" or "low"}
\item{\code{ATK_TEXT_ATTR_STRIKETHROUGH (strikethrough)}}{ "true" or "false" whether the text is strikethrough }
\item{\code{ATK_TEXT_ATTR_SIZE (size)}}{ The size of the characters. }
\item{\code{ATK_TEXT_ATTR_SCALE (scale)}}{ The scale of the characters. The value is a string representation of a double }
\item{\code{ATK_TEXT_ATTR_WEIGHT (weight)}}{ The weight of the characters.}
\item{\code{ATK_TEXT_ATTR_LANGUAGE (language)}}{ The language used}
\item{\code{ATK_TEXT_ATTR_FAMILY_NAME (family-name)}}{ The font family name}
\item{\code{ATK_TEXT_ATTR_BG_COLOR (bg-color)}}{ The background color. The value is an RGB value of the format "\code{u},\code{u},\code{u}"}
\item{\code{ATK_TEXT_ATTR_FG_COLOR (fg-color)}}{The foreground color. The value is an RGB value of the format "\code{u},\code{u},\code{u}"}
\item{\code{ATK_TEXT_ATTR_BG_STIPPLE (bg-stipple)}}{ "true" if a \code{\link{GdkBitmap}} is set for stippling the background color.}
\item{\code{ATK_TEXT_ATTR_FG_STIPPLE (fg-stipple)}}{ "true" if a \code{\link{GdkBitmap}} is set for stippling the foreground color.}
\item{\code{ATK_TEXT_ATTR_WRAP_MODE (wrap-mode)}}{ The wrap mode of the text, if any. Values are "none", "char" or "word" }
\item{\code{ATK_TEXT_ATTR_DIRECTION (direction)}}{ The direction of the text, if set. Values are "none", "ltr" or "rtl" }
\item{\code{ATK_TEXT_ATTR_JUSTIFICATION (justification)}}{ The justification of the text, if set. Values are "left", "right", "center" or "fill" }
\item{\code{ATK_TEXT_ATTR_STRETCH (stretch)}}{ The stretch of the text, if set. Values are "ultra_condensed", "extra_condensed", "condensed", "semi_condensed", "normal", "semi_expanded", "expanded", "extra_expanded" or "ultra_expanded"}
\item{\code{ATK_TEXT_ATTR_VARIANT (variant)}}{ The capitalization variant of the text, if set. Values are "normal" or "small_caps"}
\item{\code{ATK_TEXT_ATTR_STYLE (style)}}{ The slant style of the text, if set. Values are "normal", "oblique" or "italic"}
\item{\code{ATK_TEXT_ATTR_LAST_DEFINED (last-defined)}}{ not a valid text attribute, used for finding end of enumeration}
}

}
}}
\section{Implementations}{AtkText is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Signals}{\describe{
\item{\code{text-attributes-changed(atktext, user.data)}}{
The "text-attributes-changed" signal is emitted when the text attributes of 
the text of an object which implements AtkText changes.

\describe{
\item{\code{atktext}}{[\code{\link{AtkText}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{text-caret-moved(atktext, arg1, user.data)}}{
The "text-caret-moved" signal is emitted when the caret position of 
the text of an object which implements AtkText changes.

\describe{
\item{\code{atktext}}{[\code{\link{AtkText}}] the object which received the signal.}
\item{\code{arg1}}{[integer] The new position of the text caret.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{text-changed(atktext, arg1, arg2, user.data)}}{
The "text-changed" signal is emitted when the text of the object which 
implements the AtkText interface changes, This signal will have a detail 
which is either "insert" or "delete" which identifies whether the text 
change was an insertion or a deletion

\describe{
\item{\code{atktext}}{[\code{\link{AtkText}}] the object which received the signal.}
\item{\code{arg1}}{[integer] The position of the insertion or deletion.}
\item{\code{arg2}}{[integer] The length of text inserted or deleted.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{text-selection-changed(atktext, user.data)}}{
The "text-selection-changed" signal is emitted when the selected text of 
an object which implements AtkText changes.

\describe{
\item{\code{atktext}}{[\code{\link{AtkText}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkText.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}