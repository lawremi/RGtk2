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
\code{\link{pangoContextGetMatrix}(object)}\cr
\code{\link{pangoContextSetMatrix}(object, matrix)}\cr
\code{\link{pangoContextLoadFont}(object, desc)}\cr
\code{\link{pangoContextLoadFontset}(object, desc, language)}\cr
\code{\link{pangoContextGetMetrics}(object, desc, language = NULL)}\cr
\code{\link{pangoContextListFamilies}(object)}\cr
\code{\link{pangoGetMirrorChar}(ch)}\cr
\code{\link{pangoUnicharDirection}(ch)}\cr
\code{\link{pangoFindBaseDir}(text, length = -1)}\cr
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
\item{\code{num_chars}}{[integer] the length of the segment in characters.}
\item{\code{analysis}}{[\code{\link{PangoAnalysis}}] the properties of the segment.}
}

}
\item{\code{PangoAnalysis}}{
The \code{\link{PangoAnalysis}} structure stores information about
the properties of a segment of text. It has the following
fields:

\describe{
\item{\code{font}}{[\code{\link{PangoFont}}] the engine for doing rendering-system-dependent processing.}
\item{\code{level}}{[integer] the engine for doing rendering-system-independent processing.}
\item{\code{language}}{[\code{\link{PangoLanguage}}] }
\item{\code{extraAttrs}}{[list] the bidrectional level for this segment.}
}

}
\item{\code{PangoLogAttr}}{
The \code{\link{PangoLogAttr}} structure stores information
about the attributes of a single character.

\describe{
\item{\code{isLineBreak}}{[numeric] }
\item{\code{isMandatoryBreak}}{[numeric] }
\item{\code{isCharBreak}}{[numeric] }
\item{\code{isWhite}}{[numeric] }
\item{\code{isCursorPosition}}{[numeric] }
\item{\code{isWordStart}}{[numeric] }
\item{\code{isWordEnd}}{[numeric] }
\item{\code{isSentenceBoundary}}{[numeric] }
\item{\code{isSentenceStart}}{[numeric] }
\item{\code{isSentenceEnd}}{[numeric] }
\item{\code{backspaceDeletesCharacter}}{[numeric] If set, backspace deletes one character
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
to \code{pango\Log2vis\Get\Embedding\Levels()}.
  
The \code{PANGO_DIRECTION_TTB_LTR}, \code{PANGO_DIRECTION_TTB_RTL}
values come from an earlier interpretation of this
enumeration as the writing direction of a block of
text and are no longer used; See the Text module of the
CSS3 spec for how vertical text is planned to be handled
in a future version of Pango. The explanation of why
\code{PANGO_DIRECTION_TTB_LTR} is treated as \code{PANGO_DIRECTION_RTL}
can be found there as well.  

\describe{
\item{\code{ltr}}{ A strong left-to-right direction}
\item{\code{rtl}}{ A strong right-to-left direction}
\item{\code{ttb-ltr}}{ Deprecated value; treated the
  same as \code{PANGO_DIRECTION_RTL}.}
\item{\code{ttb-rtl}}{ Deprecated value; treated the
  same as PANGO\_DIRECTION\_LTR}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Text-Processing.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
