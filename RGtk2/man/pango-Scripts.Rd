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
\section{Structures}{\describe{\item{\code{PangoScriptIter}}{
A \code{\link{PangoScriptIter}} is used to iterate through a string
and identify ranges in different scripts.  

}}}
\section{Enums and Flags}{\describe{\item{\code{PangoScript}}{
The \code{\link{PangoScript}} enumeration identifies different writing
systems. The values correspond to the names as defined in the
Unicode standard.
Note that new types may be added in the future. Applications should be ready
to handle unknown values.
See Unicode Standard Annex
 (\url{http://www.unicode.org/reports/tr24/}).

\describe{
\item{\code{invalid-code}}{a value never returned from \code{\link{pangoScriptForUnichar}}}
\item{\code{common}}{a character used by multiple different scripts}
\item{\code{inherited}}{a mark glyph that takes its script from the
  base glyph to which it is attached}
\item{\code{arabic}}{	Arabic}
\item{\code{armenian}}{Armenian}
\item{\code{bengali}}{	Bengali}
\item{\code{bopomofo}}{Bopomofo}
\item{\code{cherokee}}{	Cherokee}
\item{\code{coptic}}{	Coptic}
\item{\code{cyrillic}}{	Cyrillic}
\item{\code{deseret}}{	Deseret}
\item{\code{devanagari}}{	Devanagari}
\item{\code{ethiopic}}{	Ethiopic}
\item{\code{georgian}}{	Georgian}
\item{\code{gothic}}{	Gothic}
\item{\code{greek}}{	Greek}
\item{\code{gujarati}}{	Gujarati}
\item{\code{gurmukhi}}{	Gurmukhi}
\item{\code{han}}{	Han}
\item{\code{hangul}}{	Hangul}
\item{\code{hebrew}}{	Hebrew}
\item{\code{hiragana}}{	Hiragana}
\item{\code{kannada}}{	Kannada}
\item{\code{katakana}}{	Katakana}
\item{\code{khmer}}{	Khmer}
\item{\code{lao}}{	Lao}
\item{\code{latin}}{	Latin}
\item{\code{malayalam}}{	Malayalam}
\item{\code{mongolian}}{	Mongolian}
\item{\code{myanmar}}{	Myanmar}
\item{\code{ogham}}{	Ogham}
\item{\code{old-italic}}{	Old Italic}
\item{\code{oriya}}{	Oriya}
\item{\code{runic}}{	Runic}
\item{\code{sinhala}}{	Sinhala}
\item{\code{syriac}}{	Syriac}
\item{\code{tamil}}{	Tamil}
\item{\code{telugu}}{	Telugu}
\item{\code{thaana}}{	Thaana}
\item{\code{thai}}{	Thai}
\item{\code{tibetan}}{	Tibetan}
\item{\code{canadian-aboriginal}}{	Canadian Aboriginal}
\item{\code{yi}}{	Yi}
\item{\code{tagalog}}{	Tagalog}
\item{\code{hanunoo}}{	Hanunoo}
\item{\code{buhid}}{	Buhid}
\item{\code{tagbanwa}}{	Tagbanwa}
\item{\code{braille}}{	Braille}
\item{\code{cypriot}}{	Cypriot}
\item{\code{limbu}}{	Limbu}
\item{\code{osmanya}}{	Osmanya}
\item{\code{shavian}}{	Shavian}
\item{\code{linear-b}}{	Linear B}
\item{\code{tai-le}}{	Tai Le}
\item{\code{ugaritic}}{	Ugaritic}
\item{\code{new-tai-lue}}{	New Tai Lue}
\item{\code{buginese}}{	Buginese}
\item{\code{glagolitic}}{	Glagolitic}
\item{\code{tifinagh}}{	Tifinagh}
\item{\code{syloti-nagri}}{	Syloti Nagri}
\item{\code{old-persian}}{	Old Persian}
\item{\code{kharoshthi}}{	Kharoshthi}
\item{\code{unknown}}{		an unassigned code point}
\item{\code{balinese}}{		Balinese}
\item{\code{cuneiform}}{	Cuneiform}
\item{\code{phoenician}}{	Phoenician}
\item{\code{phags-pa}}{		Phags-pa}
\item{\code{nko}}{		N'Ko}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Scripts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
