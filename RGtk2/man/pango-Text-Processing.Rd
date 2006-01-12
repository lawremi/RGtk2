\alias{pango-Text-Processing}
\alias{PangoContext}
\alias{PangoItem}
\alias{PangoAnalysis}
\alias{PangoLogAttr}
\alias{PangoDirection}
\name{pango-Text-Processing}
\title{Rendering}
\description{Functions to run the rendering pipeline}
\usage{
\link{pangoItemize}(context, text, start.index, length, attrs, cached.iter = NULL)
\link{pangoItemizeWithBaseDir}(context, base.dir, text, start.index, length, attrs, cached.iter = NULL)
\link{pangoItemCopy}(item)
\link{pangoItemNew}()
\link{pangoItemSplit}(orig, split.index, split.offset)
\link{pangoReorderItems}(logical.items)
\link{pangoContextSetFontMap}(object, font.map)
\link{pangoContextGetFontMap}(object)
\link{pangoContextGetFontDescription}(object)
\link{pangoContextSetFontDescription}(object, desc)
\link{pangoContextGetLanguage}(object)
\link{pangoContextSetLanguage}(object, language)
\link{pangoContextGetBaseDir}(object)
\link{pangoContextSetBaseDir}(object, direction)
\link{pangoContextGetMatrix}(object)
\link{pangoContextSetMatrix}(object, matrix)
\link{pangoContextLoadFont}(object, desc)
\link{pangoContextLoadFontset}(object, desc, language)
\link{pangoContextGetMetrics}(object, desc, language = NULL)
\link{pangoContextListFamilies}(object)
\link{pangoGetMirrorChar}(ch)
\link{pangoUnicharDirection}(ch)
\link{pangoFindBaseDir}(text, length = -1)
\link{pangoBreak}(text, analysis)
\link{pangoGetLogAttrs}(text, level, language)
\link{pangoFindParagraphBoundary}(text, length = -1)
\link{pangoShape}(text, analysis, glyphs)
}
\details{The Pango rendering pipeline takes a string of
Unicode characters and converts it into glyphs.
The functions described in this section accomplish
various steps of this process.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----PangoContext}}
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
\section{Enums and Flags}{\describe{\item{\code{enum PangoDirection}}{
The \code{\link{PangoDirection}} type represents a direction in the
Unicode bidirectional algorithm; not every value in this
enumeration makes sense for every usage of \code{\link{PangoDirection}};
for example, the return value of \code{\link{pangoUnicharDirection}}
and \code{\link{pangoFindBaseDir}} cannot be \code{PANGO_DIRECTION_WEAK_LTR}
or \code{PANGO_DIRECTION_WEAK_RTL}, since every character is either
neutral or has a strong direction; on the other hand
\code{PANGO_DIRECTION_NEUTRAL} doesn't make sense to pass
to \code{pangoLog2visGetEmbeddingLevels()}.
  
The \code{PANGO_DIRECTION_TTB_LTR}, \code{PANGO_DIRECTION_TTB_RTL}
values come from an earlier interpretation of this
enumeration as the writing direction of a block of
text and are no longer used; See the Text module of the
CSS3 spec for how vertical text is planned to be handled
in a future version of Pango. The explanation of why
\code{PANGO_DIRECTION_TTB_LTR} is treated as \code{PANGO_DIRECTION_RTL}
can be found there as well.  

\describe{
\item{\code{PANGO_DIRECTION_LTR (ltr)}}{ A strong left-to-right direction}
\item{\code{PANGO_DIRECTION_RTL (rtl)}}{ A strong right-to-left direction}
\item{\code{PANGO_DIRECTION_TTB_LTR (ttb-ltr)}}{ Deprecated value; treated the
  same as \code{PANGO_DIRECTION_RTL}.}
\item{\code{PANGO_DIRECTION_TTB_RTL (ttb-rtl)}}{ Deprecated value; treated the
  same as PANGO_DIRECTION_LTR}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Text-Processing.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
