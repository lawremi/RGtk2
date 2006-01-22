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
\link{pangoParseMarkup}(markup.text, accel.marker)
\link{pangoAttrTypeRegister}(name)
\link{pangoAttributeCopy}(object)
\link{pangoAttributeEqual}(object, attr2)
\link{pangoAttrLanguageNew}(language)
\link{pangoAttrFamilyNew}(family)
\link{pangoAttrStyleNew}(style)
\link{pangoAttrVariantNew}(variant)
\link{pangoAttrStretchNew}(stretch)
\link{pangoAttrWeightNew}(weight)
\link{pangoAttrSizeNew}(size)
\link{pangoAttrSizeNewAbsolute}(size)
\link{pangoAttrFontDescNew}(desc)
\link{pangoAttrForegroundNew}(red, green, blue)
\link{pangoAttrBackgroundNew}(red, green, blue)
\link{pangoAttrStrikethroughNew}(strikethrough)
\link{pangoAttrStrikethroughColorNew}(red, green, blue)
\link{pangoAttrUnderlineNew}(underline)
\link{pangoAttrUnderlineColorNew}(red, green, blue)
\link{pangoAttrShapeNew}(ink.rect, logical.rect)
\link{pangoAttrShapeNewWithData}(ink.rect, logical.rect, data)
\link{pangoAttrScaleNew}(scale.factor)
\link{pangoAttrFallbackNew}(fallback)
\link{pangoAttrRiseNew}(rise)
\link{pangoAttrLetterSpacingNew}(letter.spacing)
\link{pangoColorFree}(object)
\link{pangoColorParse}(spec)
\link{pangoColorCopy}(object)
\link{pangoLanguageFromString}(language)
\link{pangoLanguageMatches}(object, range.list)
\link{pangoAttrListNew}()
\link{pangoAttrListCopy}(object)
\link{pangoAttrListInsert}(object, attr)
\link{pangoAttrListInsertBefore}(object, attr)
\link{pangoAttrListChange}(object, attr)
\link{pangoAttrListSplice}(object, other, pos, len)
\link{pangoAttrListFilter}(object, func, data)
\link{pangoAttrListGetIterator}(object)
\link{pangoAttrIteratorCopy}(object)
\link{pangoAttrIteratorNext}(object)
\link{pangoAttrIteratorRange}(object)
\link{pangoAttrIteratorGet}(object, type)
\link{pangoAttrIteratorGetFont}(object)
\link{pangoAttrIteratorGetAttrs}(object)
}
\section{Detailed Description}{Attributed text is used in a number of places in Pango. It
is used as the input to the itemization process and also when
creating a \code{\link{PangoLayout}}. The data types and functions in
this section are used to represent and manipulate sets
of attributes applied to a portion of text.}
\section{Structures}{\describe{
\item{\code{PangoAttrClass}}{
The \code{\link{PangoAttrClass}} structure stores the type and operations for
a particular type of attribute. The functions in this structure should
not be called directly. Instead, one should use the wrapper functions
provided for \code{\link{PangoAttribute}}.

\describe{\item{\code{type}}{[\code{\link{PangoAttrType}}] the type ID for this attribute}}

}
\item{\code{PangoAttribute}}{
The \code{\link{PangoAttribute}} structure represents the common portions of all
attributes. Particular types of attributes include this structure
as their initial portion. The common portion of the attribute holds
the range to which the value in the type-specific part of the attribute
applies. 

\describe{
\item{\code{klass}}{[\code{\link{PangoAttrClass}}] the class structure holding information about the type of the attribute}
\item{\code{startIndex}}{[numeric] the start index of the range (in bytes).}
\item{\code{endIndex}}{[numeric] end index of the range (in bytes). The character at this index
	not included in the range.}
}

}
\item{\code{PangoAttrString}}{
The \code{\link{PangoAttrString}} structure is used to represent attributes with
a string value.

\describe{\item{\code{value}}{[char] the common portion of the attribute}}

}
\item{\code{PangoAttrLanguage}}{
The \code{\link{PangoAttrColor}} structure is used to represent attributes that
are languages.

\describe{\item{\code{value}}{[\code{\link{PangoLanguage}}] the common portion of the attribute}}

}
\item{\code{PangoAttrColor}}{
The \code{\link{PangoAttrColor}} structure is used to represent attributes that
are colors.

\describe{\item{\code{color}}{[\code{\link{PangoColor}}] the common portion of the attribute}}

}
\item{\code{PangoAttrInt}}{
The \code{\link{PangoAttrInt}} structure is used to represent attributes with
a integer or enumeration value.

\describe{\item{\code{value}}{[integer] the common portion of the attribute}}

}
\item{\code{PangoAttrFloat}}{
The \code{\link{PangoAttrFloat}} structure is used to represent attributes with
a float or double value.

\describe{\item{\code{value}}{[float] the common portion of the attribute}}

}
\item{\code{PangoAttrFontDesc}}{
The \code{\link{PangoAttrFontDesc}} structure is used to store an attribute that
sets all aspects of the font description at once.

\describe{\item{\code{desc}}{[\code{\link{PangoFontDescription}}] the common portion of the attribute}}

}
\item{\code{PangoAttrShape}}{
The \code{\link{PangoAttrShape}} structure is used to represent attributes which 
impose shape restrictions.

\describe{
\item{\code{inkRect}}{[\code{\link{PangoRectangle}}] the common portion of the attribute}
\item{\code{logicalRect}}{[\code{\link{PangoRectangle}}] the ink rectangle to restrict to}
}

}
\item{\code{PangoAttrSize}}{
The \code{\link{PangoAttrShape}} structure is used to represent attributes which
set font size.

\describe{
\item{\code{size}}{[integer] the common portion of the attribute}
\item{\code{absolute}}{[numeric] size of font, in units of 1/PANGO_SCALE of a point (for
  PANGO_ATTR_SIZE) or of a device uni (for PANGO_ATTR_ABSOLUTE_SIZE)}
}

}
\item{\code{PangoColor}}{
The \code{PangoColor} structure is used to
represent a color in an uncalibrated RGB colorspace.

\describe{
\item{\code{red}}{[integer] The red component of the color. This is a value between 0 and 65535, 
      with 65535 indicating full intensity.}
\item{\code{green}}{[integer] The green component of the color. This is a value between 0 and 65535, 
      with 65535 indicating full intensity.}
\item{\code{blue}}{[integer] The blue component of the color. This is a value between 0 and 65535, 
      with 65535 indicating full intensity.}
}

}
\item{\code{PangoLanguage}}{
The \code{PangoLanguage} structure is used to
represent a language.
  
\code{PangoLanguage} pointers can be efficiently 
copied and compared with each other.

}
\item{\code{PangoAttrList}}{
The \code{\link{PangoAttrList}} structure represents a list of attributes
that apply to a section of text. The attributes are, in general,
allowed to overlap in an arbitrary fashion, however, if the
attributes are manipulated only through \code{\link{pangoAttrListChange}},
the overlap between properties will meet stricter criteria.
  
Since the \code{\link{PangoAttrList}} structure is stored as a linear list,
it is not suitable for storing attributes for large amounts
of text. In general, you should not use a single \code{\link{PangoAttrList}}
for more than one paragraph of text.

}
\item{\code{PangoAttrIterator}}{
The \code{\link{PangoAttrIterator}} structure is used to represent an
iterator through a \code{PangoList}. A new iterator is created
with \code{\link{pangoAttrListGetIterator}}. Once the iterator
is created, it can be advanced through the style changes
in the text using \code{\link{pangoAttrIteratorNext}}. At each
style change, the range of the current style segment and the
attributes currently in effect can be queried.

}
}}
\section{Enums and Flags}{\describe{
\item{\code{enum PangoAttrType}}{
distinguishes between different types of attributes. Along with the
predefined values, it is possible to allocate additional values
for custom attributes using \code{\link{pangoAttrTypeRegister}}. The predefined
values are given below. The type of structure used to store the
attribute is listed in parentheses after the description.

\describe{
\item{\code{PANGO_ATTR_INVALID (invalid)}}{\emph{undocumented
}}
\item{\code{PANGO_ATTR_LANGUAGE (language)}}{language (\code{\link{PangoAttrLanguage}})}
\item{\code{PANGO_ATTR_FAMILY (family)}}{font family name list (\code{\link{PangoAttrString}})}
\item{\code{PANGO_ATTR_STYLE (style)}}{font slant style (\code{\link{PangoAttrInt}})}
\item{\code{PANGO_ATTR_WEIGHT (weight)}}{font weight (\code{\link{PangoAttrInt}})}
\item{\code{PANGO_ATTR_VARIANT (variant)}}{font variant (normal or small caps) (\code{\link{PangoAttrInt}})}
\item{\code{PANGO_ATTR_STRETCH (stretch)}}{font stretch (\code{\link{PangoAttrInt}})}
\item{\code{PANGO_ATTR_SIZE (size)}}{font size in points divided by PANGO_SCALE (\code{\link{PangoAttrInt}})}
\item{\code{PANGO_ATTR_FONT_DESC (font-desc)}}{font description (\code{\link{PangoAttrFontDesc}})}
\item{\code{PANGO_ATTR_FOREGROUND (foreground)}}{foreground color (\code{\link{PangoAttrColor}})}
\item{\code{PANGO_ATTR_BACKGROUND (background)}}{background color (\code{\link{PangoAttrColor}})}
\item{\code{PANGO_ATTR_UNDERLINE (underline)}}{whether the text has an underline (\code{\link{PangoAttrInt}})}
\item{\code{PANGO_ATTR_STRIKETHROUGH (strikethrough)}}{whether the text is struck-through (\code{\link{PangoAttrInt}})}
\item{\code{PANGO_ATTR_RISE (rise)}}{baseline displacement (\code{\link{PangoAttrInt}})}
\item{\code{PANGO_ATTR_SHAPE (shape)}}{shape (\code{\link{PangoAttrShape}})}
\item{\code{PANGO_ATTR_SCALE (scale)}}{font size scale factor (\code{PangoAttrScale})}
}

}
\item{\code{enum PangoUnderline}}{
the \code{\link{PangoUnderline}} enumeration is used to specify
whether text should be underlined, and if so, the type
of underlining.

\describe{
\item{\code{PANGO_UNDERLINE_NONE (none)}}{no underline should be drawn.}
\item{\code{PANGO_UNDERLINE_SINGLE (single)}}{a single underline should be drawn.}
\item{\code{PANGO_UNDERLINE_DOUBLE (double)}}{a double underline should be drawn.}
\item{\code{PANGO_UNDERLINE_LOW (low)}}{a single underline should be drawn at a position
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


\describe{\item{\code{data}}{[R object] }}

}
\item{\code{PangoAttrFilterFunc(attribute, data)}}{
A predicate function used by \code{\link{pangoAttrListFilter}}
to filter out a subset of attributes for a list.

\describe{
\item{\code{attribute}}{[\code{\link{PangoAttribute}}] a \code{\link{PangoAttribute}}}
\item{\code{data}}{[R object] callback data passed to \code{\link{pangoAttrListFilter}}}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Text-Attributes.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
