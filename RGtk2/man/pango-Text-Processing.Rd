\alias{pango-Text-Processing}
\alias{PangoContext}
\alias{PangoItem}
\alias{PangoAnalysis}
\alias{PangoLogAttr}
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
\code{\link{pangoBreak}(text, analysis)}\cr
\code{\link{pangoGetLogAttrs}(text, level, language)}\cr
\code{\link{pangoFindParagraphBoundary}(text, length = -1)}\cr
\code{\link{pangoShape}(text, analysis, glyphs)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----PangoContext}}
\section{Detailed Description}{The Pango rendering pipeline takes a string of
Unicode characters and converts it into glyphs.
The functions described in this section accomplish
various steps of this process.}
\section{Structures}{\describe{
\item{\verb{PangoContext}}{
The \code{\link{PangoContext}} structure stores global information
used to control the itemization process.

}
\item{\verb{PangoItem}}{
The \code{\link{PangoItem}} structure stores information about
a segment of text. It contains the following fields:

\describe{
\item{\verb{offset}}{[integer] the offset of the segment from the beginning of the
         string in bytes.}
\item{\verb{length}}{[integer] the length of the segment in bytes.}
\item{\verb{numChars}}{[integer] the length of the segment in characters.}
\item{\verb{analysis}}{[\code{\link{PangoAnalysis}}] the properties of the segment.}
}

}
\item{\verb{PangoAnalysis}}{
The \code{\link{PangoAnalysis}} structure stores information about
the properties of a segment of text. It has the following
fields:

\describe{
\item{\verb{font}}{[\code{\link{PangoFont}}] the engine for doing rendering-system-dependent processing.}
\item{\verb{level}}{[raw] the engine for doing rendering-system-independent processing.}
\item{\verb{language}}{[\code{\link{PangoLanguage}}] the font for this segment.}
\item{\verb{extraAttrs}}{[list] the bidirectional level for this segment.}
}

}
\item{\verb{PangoLogAttr}}{
The \code{\link{PangoLogAttr}} structure stores information
about the attributes of a single character.

\describe{
\item{\verb{isLineBreak}}{[numeric] if set, can break line in front of character}
\item{\verb{isMandatoryBreak}}{[numeric] if set, must break line in front of character}
\item{\verb{isCharBreak}}{[numeric] if set, can break here when doing character wrapping}
\item{\verb{isWhite}}{[numeric] is whitespace character}
\item{\verb{isCursorPosition}}{[numeric] if set, cursor can appear in front of character.
	i.e. this is a grapheme boundary, or the first character
        in the text.
	This flag implements Unicode's
	Grapheme
	Cluster Boundaries (\url{http://www.unicode.org/reports/tr29/}) semantics.}
\item{\verb{isWordStart}}{[numeric] is first character in a word}
\item{\verb{isWordEnd}}{[numeric] is first non-word char after a word
	Note that in degenerate cases, you could have both \code{is.word.start}
	and \code{is.word.end} set for some character.}
\item{\verb{isSentenceBoundary}}{[numeric] is a sentence boundary.
        There are two ways to divide sentences. The first assigns all
	inter-sentence whitespace/control/format chars to some sentence,
	so all chars are in some sentence; \code{is.sentence.boundary} denotes
	the boundaries there. The second way doesn't assign
	between-sentence spaces, etc. to any sentence, so
	\code{is.sentence.start}/\code{is.sentence.end} mark the boundaries
	of those sentences.}
\item{\verb{isSentenceStart}}{[numeric] is first character in a sentence}
\item{\verb{isSentenceEnd}}{[numeric] is first char after a sentence.
	Note that in degenerate cases, you could have both \code{is.sentence.start}
	and \code{is.sentence.end} set for some character. (e.g. no space after a
	period, so the next sentence starts right away)}
\item{\verb{backspaceDeletesCharacter}}{[numeric] if set, backspace deletes one character
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
\references{\url{https://docs.gtk.org/Pango/}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
