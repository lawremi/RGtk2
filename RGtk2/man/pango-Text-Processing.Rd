\alias{pango-Text-Processing}
\alias{PangoContext}
\alias{PangoItem}
\alias{PangoAnalysis}
\alias{PangoLogAttr}
\alias{PangoDirection}
\name{pango-Text-Processing}
\title{Rendering}
\description{Functions to run the rendering pipeline}
\section{Methods and Functions}{
\code{\link{pangoItemize}(context, text, start.index, length, attrs, cached.iter = NULL)}\cr
\code{\link{pangoItemizeWithBaseDir}(context, base.dir, text, start.index, length, attrs, cached.iter = NULL)}\cr
\code{\link{pangoItemCopy}(item)}\cr
\code{\link{pangoItemNew}()}\cr
\code{\link{pangoItemSplit}(orig, split.index, split.offset)}\cr
\code{\link{pangoReorderItems}(logical.items)}\cr
\code{\link{pangoContextSetFontMap}(object, font.map)}\cr
\code{\link{pangoContextGetFontMap}(object)}\cr
\code{\link{pangoContextGetFontDescription}(object)}\cr
\code{\link{pangoContextSetFontDescription}(object, desc)}\cr
\code{\link{pangoContextGetLanguage}(object)}\cr
\code{\link{pangoContextSetLanguage}(object, language)}\cr
\code{\link{pangoContextGetBaseDir}(object)}\cr
\code{\link{pangoContextSetBaseDir}(object, direction)}\cr
\code{\link{pangoContextGetBaseGravity}(object)}\cr
\code{\link{pangoContextSetBaseGravity}(object, gravity)}\cr
\code{\link{pangoContextGetGravity}(object)}\cr
\code{\link{pangoContextGetGravityHint}(object)}\cr
\code{\link{pangoContextSetGravityHint}(object, hint)}\cr
\code{\link{pangoContextGetMatrix}(object)}\cr
\code{\link{pangoContextSetMatrix}(object, matrix)}\cr
\code{\link{pangoContextLoadFont}(object, desc)}\cr
\code{\link{pangoContextLoadFontset}(object, desc, language)}\cr
\code{\link{pangoContextGetMetrics}(object, desc, language = NULL)}\cr
\code{\link{pangoContextListFamilies}(object)}\cr
\code{\link{pangoGetMirrorChar}(ch)}\cr
\code{\link{pangoUnicharDirection}(ch)}\cr
\code{\link{pangoFindBaseDir}(text, length = -1)}\cr
\code{\link{pangoGravityToRotation}(base.gravity)}\cr
\code{\link{pangoBreak}(text, analysis)}\cr
\code{\link{pangoGetLogAttrs}(text, level, language)}\cr
\code{\link{pangoFindParagraphBoundary}(text, length = -1)}\cr
\code{\link{pangoShape}(text, analysis, glyphs)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----PangoContext}}
\section{Detailed Description}{The Pango rendering pipeline takes a string of
Unicode characters and converts it into glyphs.
The functions described in this section accomplish
various steps of this process.}
\section{Structures}{\describe{
\item{\code{PangoContext}}{
The \code{\link{PangoContext}} structure stores global information
used to control the itemization process. 

}
\item{\code{PangoItem}}{
The \code{\link{PangoItem}} structure stores information about
a segment of text. It contains the following fields:

\describe{
\item{\code{offset}}{[integer] the offset of the segment from the beginning of the
         string in bytes.}
\item{\code{length}}{[integer] the length of the segment in bytes.}
\item{\code{numChars}}{[integer] the length of the segment in characters.}
\item{\code{analysis}}{[\code{\link{PangoAnalysis}}] the properties of the segment.}
}

}
\item{\code{PangoAnalysis}}{
The \code{\link{PangoAnalysis}} structure stores information about
the properties of a segment of text. It has the following
fields:

\describe{
\item{\code{font}}{[\code{\link{PangoFont}}] the engine for doing rendering-system-dependent processing.}
\item{\code{level}}{[raw] the engine for doing rendering-system-independent processing.}
\item{\code{language}}{[\code{\link{PangoLanguage}}] the font for this segment.}
\item{\code{extraAttrs}}{[list] the bidirectional level for this segment.}
}

}
\item{\code{PangoLogAttr}}{
The \code{\link{PangoLogAttr}} structure stores information
about the attributes of a single character.

\describe{
\item{\code{isLineBreak}}{[numeric] if set, can break line in front of character}
\item{\code{isMandatoryBreak}}{[numeric] if set, must break line in front of character}
\item{\code{isCharBreak}}{[numeric] if set, can break here when doing character wrapping}
\item{\code{isWhite}}{[numeric] is whitespace character}
\item{\code{isCursorPosition}}{[numeric] if set, cursor can appear in front of character.
	i.e. this is a grapheme boundary, or the first character
        in the text.}
\item{\code{isWordStart}}{[numeric] is first character in a word}
\item{\code{isWordEnd}}{[numeric] is first non-word char after a word
	Note that in degenerate cases, you could have both \code{is.word.start}
	and \code{is.word.end} set for some character.}
\item{\code{isSentenceBoundary}}{[numeric] is a sentence boundary.
        There are two ways to divide sentences. The first assigns all
	inter-sentence whitespace/control/format chars to some sentence,
	so all chars are in some sentence; \code{is.sentence.boundary} denotes
	the boundaries there. The second way doesn't assign
	between-sentence spaces, etc. to any sentence, so
	\code{is.sentence.start}/\code{is.sentence.end} mark the boundaries
	of those sentences.}
\item{\code{isSentenceStart}}{[numeric] is first character in a sentence}
\item{\code{isSentenceEnd}}{[numeric] is first char after a sentence.
	Note that in degenerate cases, you could have both \code{is.sentence.start}
	and \code{is.sentence.end} set for some character. (e.g. no space after a
	period, so the next sentence starts right away)}
\item{\code{backspaceDeletesCharacter}}{[numeric] if set, backspace deletes one character
                              rather than the entire grapheme cluster. This
                              field is only meaningful on grapheme
                              boundaries (where \code{is.cursor.position} is
                              set).  In some languages, the full grapheme
                              (e.g.  letter + diacritics) is considered a
                              unit, while in others, each decomposed
                              character in the grapheme is a unit. In the
                              default implementation of \code{\link{pangoBreak}}, this
                              bit is set on all grapheme boundaries except
                              those following Latin, Cyrillic or Greek base
                              characters.}
}

}
}}
\section{Enums and Flags}{\describe{\item{\code{PangoDirection}}{
The \code{\link{PangoDirection}} type represents a direction in the
Unicode bidirectional algorithm; not every value in this
enumeration makes sense for every usage of \code{\link{PangoDirection}};
for example, the return value of \code{\link{pangoUnicharDirection}}
and \code{\link{pangoFindBaseDir}} cannot be \code{PANGO_DIRECTION_WEAK_LTR}
or \code{PANGO_DIRECTION_WEAK_RTL}, since every character is either
neutral or has a strong direction; on the other hand
\code{PANGO_DIRECTION_NEUTRAL} doesn't make sense to pass
to \code{\link{pangoItemizeWithBaseDir}}.
  
The \code{PANGO_DIRECTION_TTB_LTR}, \code{PANGO_DIRECTION_TTB_RTL}
values come from an earlier interpretation of this
enumeration as the writing direction of a block of
text and are no longer used; See \code{\link{PangoGravity}} for how
vertical text is handled in Pango.  

\describe{
\item{\code{ltr}}{ A strong left-to-right direction}
\item{\code{rtl}}{ A strong right-to-left direction}
\item{\code{ttb-ltr}}{ Deprecated value; treated the
  same as \code{PANGO_DIRECTION_RTL}.}
\item{\code{ttb-rtl}}{ Deprecated value; treated the
  same as \code{PANGO_DIRECTION_LTR}}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Text-Processing.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
