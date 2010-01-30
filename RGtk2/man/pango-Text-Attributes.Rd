\alias{pango-Text-Attributes}
\alias{PangoAttrClass}
\alias{PangoAttribute}
\alias{PangoAttrString}
\alias{PangoAttrLanguage}
\alias{PangoAttrColor}
\alias{PangoAttrInt}
\alias{PangoAttrFloat}
\alias{PangoAttrFontDesc}
\alias{PangoAttrShape}
\alias{PangoAttrSize}
\alias{PangoColor}
\alias{PangoLanguage}
\alias{PangoAttrList}
\alias{PangoAttrIterator}
\alias{PangoAttrDataCopyFunc}
\alias{PangoAttrFilterFunc}
\alias{PangoAttrType}
\alias{PangoUnderline}
\name{pango-Text-Attributes}
\title{Text Attributes}
\description{Font and other attributes for annotating text}
\section{Methods and Functions}{
\code{\link{pangoParseMarkup}(markup.text, accel.marker, .errwarn = TRUE)}\cr
\code{\link{pangoAttrTypeRegister}(name)}\cr
\code{\link{pangoAttributeInit}(attr, klass)}\cr
\code{\link{pangoAttributeCopy}(object)}\cr
\code{\link{pangoAttributeEqual}(object, attr2)}\cr
\code{\link{pangoAttrLanguageNew}(language)}\cr
\code{\link{pangoAttrFamilyNew}(family)}\cr
\code{\link{pangoAttrStyleNew}(style)}\cr
\code{\link{pangoAttrVariantNew}(variant)}\cr
\code{\link{pangoAttrStretchNew}(stretch)}\cr
\code{\link{pangoAttrWeightNew}(weight)}\cr
\code{\link{pangoAttrSizeNew}(size)}\cr
\code{\link{pangoAttrSizeNewAbsolute}(size)}\cr
\code{\link{pangoAttrFontDescNew}(desc)}\cr
\code{\link{pangoAttrForegroundNew}(red, green, blue)}\cr
\code{\link{pangoAttrBackgroundNew}(red, green, blue)}\cr
\code{\link{pangoAttrStrikethroughNew}(strikethrough)}\cr
\code{\link{pangoAttrStrikethroughColorNew}(red, green, blue)}\cr
\code{\link{pangoAttrUnderlineNew}(underline)}\cr
\code{\link{pangoAttrUnderlineColorNew}(red, green, blue)}\cr
\code{\link{pangoAttrShapeNew}(ink.rect, logical.rect)}\cr
\code{\link{pangoAttrShapeNewWithData}(ink.rect, logical.rect, data)}\cr
\code{\link{pangoAttrScaleNew}(scale.factor)}\cr
\code{\link{pangoAttrRiseNew}(rise)}\cr
\code{\link{pangoAttrLetterSpacingNew}(letter.spacing)}\cr
\code{\link{pangoAttrFallbackNew}(fallback)}\cr
\code{\link{pangoAttrGravityNew}(gravity)}\cr
\code{\link{pangoAttrGravityHintNew}(hint)}\cr
\code{\link{pangoColorParse}(spec)}\cr
\code{\link{pangoColorCopy}(object)}\cr
\code{\link{pangoColorFree}(object)}\cr
\code{\link{pangoColorToString}(object)}\cr
\code{\link{pangoLanguageFromString}(language)}\cr
\code{\link{pangoLanguageMatches}(object, range.list)}\cr
\code{\link{pangoAttrListNew}()}\cr
\code{\link{pangoAttrListCopy}(object)}\cr
\code{\link{pangoAttrListInsert}(object, attr)}\cr
\code{\link{pangoAttrListInsertBefore}(object, attr)}\cr
\code{\link{pangoAttrListChange}(object, attr)}\cr
\code{\link{pangoAttrListSplice}(object, other, pos, len)}\cr
\code{\link{pangoAttrListFilter}(object, func, data)}\cr
\code{\link{pangoAttrListGetIterator}(object)}\cr
\code{\link{pangoAttrIteratorCopy}(object)}\cr
\code{\link{pangoAttrIteratorNext}(object)}\cr
\code{\link{pangoAttrIteratorRange}(object)}\cr
\code{\link{pangoAttrIteratorGet}(object, type)}\cr
\code{\link{pangoAttrIteratorGetFont}(object)}\cr
\code{\link{pangoAttrIteratorGetAttrs}(object)}\cr
}
\section{Detailed Description}{Attributed text is used in a number of places in Pango. It
is used as the input to the itemization process and also when
creating a \verb{\link{PangoLayout}}. The data types and functions in
this section are used to represent and manipulate sets
of attributes applied to a portion of text.}
\section{Structures}{\describe{
\item{\verb{PangoAttrClass}}{
The \verb{\link{PangoAttrClass}} structure stores the type and operations for
a particular type of attribute. The functions in this structure should
not be called directly. Instead, one should use the wrapper functions
provided for \verb{\link{PangoAttribute}}.

\describe{\item{\verb{type}}{[\code{\link{PangoAttrType}}] the type ID for this attribute}}

}
\item{\verb{PangoAttribute}}{
The \verb{\link{PangoAttribute}} structure represents the common portions of all
attributes. Particular types of attributes include this structure
as their initial portion. The common portion of the attribute holds
the range to which the value in the type-specific part of the attribute
applies and should be initialized using \code{\link{pangoAttributeInit}}.
By default an attribute will have an all-inclusive range of [0,\code{G_MAXUINT}].

\describe{
\item{\verb{klass}}{[\verb{\link{PangoAttrClass}}] the class structure holding information about the type of the attribute}
\item{\verb{startIndex}}{[numeric] the start index of the range (in bytes).}
\item{\verb{endIndex}}{[numeric] end index of the range (in bytes). The character at this index
	is not included in the range.}
}

}
\item{\verb{PangoAttrString}}{
The \verb{\link{PangoAttrString}} structure is used to represent attributes with
a string value.

\describe{\item{\verb{value}}{[char] the common portion of the attribute}}

}
\item{\verb{PangoAttrLanguage}}{
The \verb{\link{PangoAttrLanguage}} structure is used to represent attributes that
are languages.

\describe{\item{\verb{value}}{[\verb{\link{PangoLanguage}}] the common portion of the attribute}}

}
\item{\verb{PangoAttrColor}}{
The \verb{\link{PangoAttrColor}} structure is used to represent attributes that
are colors.

\describe{\item{\verb{color}}{[\verb{\link{PangoColor}}] the common portion of the attribute}}

}
\item{\verb{PangoAttrInt}}{
The \verb{\link{PangoAttrInt}} structure is used to represent attributes with
an integer or enumeration value.

\describe{\item{\verb{value}}{[integer] the common portion of the attribute}}

}
\item{\verb{PangoAttrFloat}}{
The \verb{\link{PangoAttrFloat}} structure is used to represent attributes with
a float or double value.

\describe{\item{\verb{value}}{[numeric] the common portion of the attribute}}

}
\item{\verb{PangoAttrFontDesc}}{
The \verb{\link{PangoAttrFontDesc}} structure is used to store an attribute that
sets all aspects of the font description at once.

\describe{\item{\verb{desc}}{[\verb{\link{PangoFontDescription}}] the common portion of the attribute}}

}
\item{\verb{PangoAttrShape}}{
The \verb{\link{PangoAttrShape}} structure is used to represent attributes which 
impose shape restrictions.

\describe{
\item{\verb{inkRect}}{[\verb{\link{PangoRectangle}}] the common portion of the attribute}
\item{\verb{logicalRect}}{[\verb{\link{PangoRectangle}}] the ink rectangle to restrict to}
}

}
\item{\verb{PangoAttrSize}}{
The \verb{\link{PangoAttrShape}} structure is used to represent attributes which
set font size.

\describe{
\item{\verb{size}}{[integer] the common portion of the attribute}
\item{\verb{absolute}}{[numeric] size of font, in units of 1/\code{PANGO_SCALE} of a point (for
  \code{PANGO_ATTR_SIZE}) or of a device uni (for \code{PANGO_ATTR_ABSOLUTE_SIZE})}
}

}
\item{\verb{PangoColor}}{
The \verb{\link{PangoColor}} structure is used to
represent a color in an uncalibrated RGB color-space.

\describe{
\item{\verb{red}}{[integer] The red component of the color. This is a value between 0 and 65535, 
      with 65535 indicating full intensity.}
\item{\verb{green}}{[integer] The green component of the color. This is a value between 0 and 65535, 
      with 65535 indicating full intensity.}
\item{\verb{blue}}{[integer] The blue component of the color. This is a value between 0 and 65535, 
      with 65535 indicating full intensity.}
}

}
\item{\verb{PangoLanguage}}{
The \verb{\link{PangoLanguage}} structure is used to
represent a language.
  \verb{\link{PangoLanguage}} pointers can be efficiently 
copied and compared with each other.

}
\item{\verb{PangoAttrList}}{
The \verb{\link{PangoAttrList}} structure represents a list of attributes
that apply to a section of text. The attributes are, in general,
allowed to overlap in an arbitrary fashion, however, if the
attributes are manipulated only through \code{\link{pangoAttrListChange}},
the overlap between properties will meet stricter criteria.
  
Since the \verb{\link{PangoAttrList}} structure is stored as a linear list,
it is not suitable for storing attributes for large amounts
of text. In general, you should not use a single \verb{\link{PangoAttrList}}
for more than one paragraph of text.

}
\item{\verb{PangoAttrIterator}}{
The \verb{\link{PangoAttrIterator}} structure is used to represent an
iterator through a \verb{\link{PangoAttrList}}. A new iterator is created
with \code{\link{pangoAttrListGetIterator}}. Once the iterator
is created, it can be advanced through the style changes
in the text using \code{\link{pangoAttrIteratorNext}}. At each
style change, the range of the current style segment and the
attributes currently in effect can be queried.

}
}}
\section{Enums and Flags}{\describe{
\item{\verb{PangoAttrType}}{
The \code{\link{PangoAttrType}}
distinguishes between different types of attributes. Along with the
predefined values, it is possible to allocate additional values
for custom attributes using \code{\link{pangoAttrTypeRegister}}. The predefined
values are given below. The type of structure used to store the
attribute is listed in parentheses after the description.

\describe{
\item{\verb{invalid}}{does not happen}
\item{\verb{language}}{language (\verb{\link{PangoAttrLanguage}})}
\item{\verb{family}}{font family name list (\verb{\link{PangoAttrString}})}
\item{\verb{style}}{font slant style (\verb{\link{PangoAttrInt}})}
\item{\verb{weight}}{font weight (\verb{\link{PangoAttrInt}})}
\item{\verb{variant}}{font variant (normal or small caps) (\verb{\link{PangoAttrInt}})}
\item{\verb{stretch}}{font stretch (\verb{\link{PangoAttrInt}})}
\item{\verb{size}}{font size in points scaled by \code{PANGO_SCALE} (\verb{\link{PangoAttrInt}})}
\item{\verb{font-desc}}{font description (\verb{\link{PangoAttrFontDesc}})}
\item{\verb{foreground}}{foreground color (\verb{\link{PangoAttrColor}})}
\item{\verb{background}}{background color (\verb{\link{PangoAttrColor}})}
\item{\verb{underline}}{whether the text has an underline (\verb{\link{PangoAttrInt}})}
\item{\verb{strikethrough}}{whether the text is struck-through (\verb{\link{PangoAttrInt}})}
\item{\verb{rise}}{baseline displacement (\verb{\link{PangoAttrInt}})}
\item{\verb{shape}}{shape (\verb{\link{PangoAttrShape}})}
\item{\verb{scale}}{font size scale factor (\verb{\link{PangoAttrFloat}})}
\item{\verb{fallback}}{whether fallback is enabled (\verb{\link{PangoAttrInt}})}
\item{\verb{letter-spacing}}{letter spacing (\verb{\link{PangoAttrInt}})}
\item{\verb{underline-color}}{underline color (\verb{\link{PangoAttrColor}})}
\item{\verb{strikethrough-color}}{strikethrough color (\verb{\link{PangoAttrColor}})}
\item{\verb{absolute-size}}{font size in pixels scaled by \code{PANGO_SCALE} (\verb{\link{PangoAttrInt}})}
\item{\verb{gravity}}{base text gravity (\verb{\link{PangoAttrInt}})}
\item{\verb{gravity-hint}}{gravity hint (\verb{\link{PangoAttrInt}})}
}

}
\item{\verb{PangoUnderline}}{
the \code{\link{PangoUnderline}} enumeration is used to specify
whether text should be underlined, and if so, the type
of underlining.

\describe{
\item{\verb{none}}{no underline should be drawn}
\item{\verb{single}}{a single underline should be drawn}
\item{\verb{double}}{a double underline should be drawn}
\item{\verb{low}}{a single underline should be drawn at a position
                      beneath the ink extents of the text being
                      underlined. This should be used only for underlining
                      single characters, such as for keyboard
                      accelerators. \code{PANGO_UNDERLINE_SINGLE} should
                      be used for extended portions of text.}
}

}
}}
\section{User Functions}{\describe{
\item{\code{PangoAttrDataCopyFunc(data)}}{
A copy function passed to attribute new functions that take
user data.

\describe{\item{\code{data}}{[R object] the user data}}

\emph{Returns:} [R object] a new copy of \code{data}.

}
\item{\code{PangoAttrFilterFunc(attribute, data)}}{
A predicate function used by \code{\link{pangoAttrListFilter}}
to filter out a subset of attributes for a list.

\describe{
\item{\code{attribute}}{[\verb{\link{PangoAttribute}}] a \verb{\link{PangoAttribute}}}
\item{\code{data}}{[R object] callback data passed to \code{\link{pangoAttrListFilter}}}
}

\emph{Returns:} [logical] \code{TRUE} if the attribute should be filtered out

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Text-Attributes.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
