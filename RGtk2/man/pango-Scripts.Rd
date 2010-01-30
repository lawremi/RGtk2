\alias{pango-Scripts}
\alias{PangoScriptIter}
\alias{PangoScript}
\name{pango-Scripts}
\title{Scripts}
\description{Identifying writing systems}
\section{Methods and Functions}{
\code{\link{pangoScriptForUnichar}(ch)}\cr
\code{\link{pangoScriptGetSampleLanguage}(script)}\cr
\code{\link{pangoLanguageIncludesScript}(object, script)}\cr
\code{\link{pangoScriptIterNew}(text, length)}\cr
\code{\link{pangoScriptIterGetRange}(object)}\cr
\code{\link{pangoScriptIterNext}(object)}\cr
}
\section{Detailed Description}{The functions in this section are used to identify the writing
system, or \dfn{script} of individual characters
and of ranges within a larger text string.}
\section{Structures}{\describe{\item{\verb{PangoScriptIter}}{
A \verb{\link{PangoScriptIter}} is used to iterate through a string
and identify ranges in different scripts.  

}}}
\section{Enums and Flags}{\describe{\item{\verb{PangoScript}}{
The \code{\link{PangoScript}} enumeration identifies different writing
systems. The values correspond to the names as defined in the
Unicode standard.
Note that new types may be added in the future. Applications should be ready
to handle unknown values.  This enumeration is interchangeable with
\verb{GUnicodeScript}.  See Unicode Standard Annex
 (\url{http://www.unicode.org/reports/tr24/}).

\describe{
\item{\verb{invalid-code}}{a value never returned from \code{\link{pangoScriptForUnichar}}}
\item{\verb{common}}{a character used by multiple different scripts}
\item{\verb{inherited}}{a mark glyph that takes its script from the
  base glyph to which it is attached}
\item{\verb{arabic}}{	Arabic}
\item{\verb{armenian}}{Armenian}
\item{\verb{bengali}}{	Bengali}
\item{\verb{bopomofo}}{Bopomofo}
\item{\verb{cherokee}}{	Cherokee}
\item{\verb{coptic}}{	Coptic}
\item{\verb{cyrillic}}{	Cyrillic}
\item{\verb{deseret}}{	Deseret}
\item{\verb{devanagari}}{	Devanagari}
\item{\verb{ethiopic}}{	Ethiopic}
\item{\verb{georgian}}{	Georgian}
\item{\verb{gothic}}{	Gothic}
\item{\verb{greek}}{	Greek}
\item{\verb{gujarati}}{	Gujarati}
\item{\verb{gurmukhi}}{	Gurmukhi}
\item{\verb{han}}{	Han}
\item{\verb{hangul}}{	Hangul}
\item{\verb{hebrew}}{	Hebrew}
\item{\verb{hiragana}}{	Hiragana}
\item{\verb{kannada}}{	Kannada}
\item{\verb{katakana}}{	Katakana}
\item{\verb{khmer}}{	Khmer}
\item{\verb{lao}}{	Lao}
\item{\verb{latin}}{	Latin}
\item{\verb{malayalam}}{	Malayalam}
\item{\verb{mongolian}}{	Mongolian}
\item{\verb{myanmar}}{	Myanmar}
\item{\verb{ogham}}{	Ogham}
\item{\verb{old-italic}}{	Old Italic}
\item{\verb{oriya}}{	Oriya}
\item{\verb{runic}}{	Runic}
\item{\verb{sinhala}}{	Sinhala}
\item{\verb{syriac}}{	Syriac}
\item{\verb{tamil}}{	Tamil}
\item{\verb{telugu}}{	Telugu}
\item{\verb{thaana}}{	Thaana}
\item{\verb{thai}}{	Thai}
\item{\verb{tibetan}}{	Tibetan}
\item{\verb{canadian-aboriginal}}{	Canadian Aboriginal}
\item{\verb{yi}}{	Yi}
\item{\verb{tagalog}}{	Tagalog}
\item{\verb{hanunoo}}{	Hanunoo}
\item{\verb{buhid}}{	Buhid}
\item{\verb{tagbanwa}}{	Tagbanwa}
\item{\verb{braille}}{	Braille}
\item{\verb{cypriot}}{	Cypriot}
\item{\verb{limbu}}{	Limbu}
\item{\verb{osmanya}}{	Osmanya}
\item{\verb{shavian}}{	Shavian}
\item{\verb{linear-b}}{	Linear B}
\item{\verb{tai-le}}{	Tai Le}
\item{\verb{ugaritic}}{	Ugaritic}
\item{\verb{new-tai-lue}}{	New Tai Lue}
\item{\verb{buginese}}{	Buginese}
\item{\verb{glagolitic}}{	Glagolitic}
\item{\verb{tifinagh}}{	Tifinagh}
\item{\verb{syloti-nagri}}{	Syloti Nagri}
\item{\verb{old-persian}}{	Old Persian}
\item{\verb{kharoshthi}}{	Kharoshthi}
\item{\verb{unknown}}{		an unassigned code point}
\item{\verb{balinese}}{		Balinese}
\item{\verb{cuneiform}}{	Cuneiform}
\item{\verb{phoenician}}{	Phoenician}
\item{\verb{phags-pa}}{		Phags-pa}
\item{\verb{nko}}{		N'Ko}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Scripts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
