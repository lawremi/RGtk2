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
\section{Methods and Functions}{
\code{\link{atkTextGetText}(object, start.offset, end.offset)}\cr
\code{\link{atkTextGetCharacterAtOffset}(object, offset)}\cr
\code{\link{atkTextGetTextAfterOffset}(object, offset, boundary.type)}\cr
\code{\link{atkTextGetTextAtOffset}(object, offset, boundary.type)}\cr
\code{\link{atkTextGetTextBeforeOffset}(object, offset, boundary.type)}\cr
\code{\link{atkTextGetCaretOffset}(object)}\cr
\code{\link{atkTextGetCharacterExtents}(object, offset, coords)}\cr
\code{\link{atkTextGetRunAttributes}(object, offset)}\cr
\code{\link{atkTextGetDefaultAttributes}(object)}\cr
\code{\link{atkTextGetCharacterCount}(object)}\cr
\code{\link{atkTextGetOffsetAtPoint}(object, x, y, coords)}\cr
\code{\link{atkTextGetBoundedRanges}(object, rect, coord.type, x.clip.type, y.clip.type)}\cr
\code{\link{atkTextGetRangeExtents}(object, start.offset, end.offset, coord.type)}\cr
\code{\link{atkTextGetNSelections}(object)}\cr
\code{\link{atkTextGetSelection}(object, selection.num)}\cr
\code{\link{atkTextAddSelection}(object, start.offset, end.offset)}\cr
\code{\link{atkTextRemoveSelection}(object, selection.num)}\cr
\code{\link{atkTextSetSelection}(object, selection.num, start.offset, end.offset)}\cr
\code{\link{atkTextSetCaretOffset}(object, offset)}\cr
\code{\link{atkTextAttributeRegister}(name)}\cr
\code{\link{atkTextAttributeGetName}(attr)}\cr
\code{\link{atkTextAttributeForName}(name)}\cr
\code{\link{atkTextAttributeGetValue}(attr, index)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkText}}
\section{Implementations}{AtkText is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\code{\link{AtkText}} should be implemented by \verb{AtkObjects} on behalf of widgets that
have text content which is either attributed or otherwise non-trivial.
\verb{AtkObjects} whose text content is simple, unattributed, and very brief
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
\section{Structures}{\describe{
\item{\verb{AtkText}}{
The AtkText structure does not contain any fields.

}
\item{\verb{AtkTextRange}}{
A structure used to describe a text range.  
\strong{\verb{AtkTextRange} is a \link{transparent-type}.}

\describe{
\item{\verb{bounds}}{[\code{\link{AtkTextRectangle}}]  A rectangle giving the bounds of the text range}
\item{\verb{startOffset}}{[integer]  The start offset of a AtkTextRange}
\item{\verb{endOffset}}{[integer]  The end offset of a AtkTextRange}
\item{\verb{content}}{[character]  The text in the text range}
}

}
\item{\verb{AtkTextRectangle}}{
A structure used to store a rectangle used by AtkText.  
\strong{\verb{AtkTextRectangle} is a \link{transparent-type}.}

\describe{
\item{\code{x}}{[integer]  The horizontal coordinate of a rectangle}
\item{\code{y}}{[integer]  The vertical coordinate of a rectangle}
\item{\code{width}}{[integer]  The width of a rectangle}
\item{\code{height}}{[integer]  The height of a rectangle}
}

}
\item{\verb{AtkAttribute}}{
A string name/value pair representing a text attribute.  
\strong{\verb{AtkAttribute} is a \link{transparent-type}.}

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
\item{\verb{AtkTextBoundary}}{
Text boundary types used for specifying boundaries for regions of text  

\describe{
\item{\verb{char}}{ Boundary is the boundary between characters 
(including non-printing characters)}
\item{\verb{word-start}}{ Boundary is the start (i.e. first character) of a word. }
\item{\verb{word-end}}{ Boundary is the end (i.e. last character) of a word.}
\item{\verb{sentence-start}}{ Boundary is the first character in a sentence.}
\item{\verb{sentence-end}}{ Boundary is the last (terminal) character in a sentence; 
in languages which use "sentence stop" punctuation such as English, the boundary is thus the
'.', '?', or similar terminal punctuation character.}
\item{\verb{line-start}}{ Boundary is the initial character of the content or a 
character immediately following a newline, linefeed, or return character.}
\item{\verb{line-end}}{ Boundary is the linefeed, or return character.}
}

}
\item{\verb{AtkTextClipType}}{
Describes the type of clipping required.  

\describe{
\item{\verb{none}}{ No clipping to be done}
\item{\verb{min}}{ Text clipped by min coordinate is omitted}
\item{\verb{max}}{ Text clipped by max coordinate is omitted}
\item{\verb{both}}{ Only text fully within mix/max bound is retained}
}

}
\item{\verb{AtkTextAttribute}}{
Describes the text attributes supported  

\describe{
\item{\verb{invalid}}{ Invalid attribute}
\item{\verb{left-margin}}{ The pixel width of the left margin}
\item{\verb{right-margin}}{ The pixel width of the right margin}
\item{\verb{indent}}{ The number of pixels that the text is indented}
\item{\verb{invisible}}{ Either "true" or "false" indicating whether text is visible or not}
\item{\verb{editable}}{ Either "true" or "false" indicating whether text is editable or not}
\item{\verb{pixels-above-lines}}{ Pixels of blank space to leave above each line. }
\item{\verb{pixels-below-lines}}{ Pixels of blank space to leave below each line.}
\item{\verb{pixels-inside-wrap}}{ Pixels of blank space to leave between wrapped lines inside the same line (paragraph).}
\item{\verb{bg-full-height}}{ "true" or "false" whether to make the background color for each character the height of the highest font used on the current line, or the height of the font used for the current character.}
\item{\verb{rise}}{ Number of pixels that the characters are risen above the baseline}
\item{\verb{underline}}{ "none", "single", "double" or "low"}
\item{\verb{strikethrough}}{ "true" or "false" whether the text is strikethrough }
\item{\verb{size}}{ The size of the characters. }
\item{\verb{scale}}{ The scale of the characters. The value is a string representation of a double }
\item{\verb{weight}}{ The weight of the characters.}
\item{\verb{language}}{ The language used}
\item{\verb{family-name}}{ The font family name}
\item{\verb{bg-color}}{ The background color. The value is an RGB value of the format "\code{u},\code{u},\code{u}"}
\item{\verb{fg-color}}{The foreground color. The value is an RGB value of the format "\code{u},\code{u},\code{u}"}
\item{\verb{bg-stipple}}{ "true" if a \code{\link{GdkBitmap}} is set for stippling the background color.}
\item{\verb{fg-stipple}}{ "true" if a \code{\link{GdkBitmap}} is set for stippling the foreground color.}
\item{\verb{wrap-mode}}{ The wrap mode of the text, if any. Values are "none", "char", "word", or "word_char".}
\item{\verb{direction}}{ The direction of the text, if set. Values are "none", "ltr" or "rtl" }
\item{\verb{justification}}{ The justification of the text, if set. Values are "left", "right", "center" or "fill" }
\item{\verb{stretch}}{ The stretch of the text, if set. Values are "ultra_condensed", "extra_condensed", "condensed", "semi_condensed", "normal", "semi_expanded", "expanded", "extra_expanded" or "ultra_expanded"}
\item{\verb{variant}}{ The capitalization variant of the text, if set. Values are "normal" or "small_caps"}
\item{\verb{style}}{ The slant style of the text, if set. Values are "normal", "oblique" or "italic"}
\item{\verb{last-defined}}{ not a valid text attribute, used for finding end of enumeration}
}

}
}}
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
\item{\code{arg1}}{[integer] The position (character offset) of the insertion or deletion.}
\item{\code{arg2}}{[integer] The length (in characters) of text inserted or deleted.}
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
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkText.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
