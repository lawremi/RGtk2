\alias{pango-Fonts}
\alias{PangoFontDescription}
\alias{PangoFontMetrics}
\alias{PangoFont}
\alias{PangoFontFamily}
\alias{PangoFontFace}
\alias{PangoFontMap}
\alias{PangoFontset}
\alias{PangoFontsetSimple}
\alias{PangoFontsetForeachFunc}
\alias{PangoStyle}
\alias{PangoWeight}
\alias{PangoVariant}
\alias{PangoStretch}
\alias{PangoFontMask}
\name{pango-Fonts}
\title{Fonts}
\description{Structures representing abstract fonts}
\section{Methods and Functions}{
\code{\link{pangoFontDescriptionNew}()}\cr
\code{\link{pangoFontDescriptionCopy}(object)}\cr
\code{\link{pangoFontDescriptionCopyStatic}(object)}\cr
\code{\link{pangoFontDescriptionHash}(object)}\cr
\code{\link{pangoFontDescriptionEqual}(object, desc2)}\cr
\code{\link{pangoFontDescriptionSetFamily}(object, family)}\cr
\code{\link{pangoFontDescriptionSetFamilyStatic}(object, family)}\cr
\code{\link{pangoFontDescriptionGetFamily}(object)}\cr
\code{\link{pangoFontDescriptionSetStyle}(object, style)}\cr
\code{\link{pangoFontDescriptionGetStyle}(object)}\cr
\code{\link{pangoFontDescriptionSetVariant}(object, variant)}\cr
\code{\link{pangoFontDescriptionGetVariant}(object)}\cr
\code{\link{pangoFontDescriptionSetWeight}(object, weight)}\cr
\code{\link{pangoFontDescriptionGetWeight}(object)}\cr
\code{\link{pangoFontDescriptionSetStretch}(object, stretch)}\cr
\code{\link{pangoFontDescriptionGetStretch}(object)}\cr
\code{\link{pangoFontDescriptionSetSize}(object, size)}\cr
\code{\link{pangoFontDescriptionGetSize}(object)}\cr
\code{\link{pangoFontDescriptionSetAbsoluteSize}(object, size)}\cr
\code{\link{pangoFontDescriptionGetSizeIsAbsolute}(object)}\cr
\code{\link{pangoFontDescriptionSetGravity}(object, gravity)}\cr
\code{\link{pangoFontDescriptionGetGravity}(object)}\cr
\code{\link{pangoFontDescriptionGetSetFields}(object)}\cr
\code{\link{pangoFontDescriptionUnsetFields}(object, to.unset)}\cr
\code{\link{pangoFontDescriptionMerge}(object, desc.to.merge, replace.existing)}\cr
\code{\link{pangoFontDescriptionBetterMatch}(object, old.match = NULL, new.match)}\cr
\code{\link{pangoFontDescriptionFromString}(str)}\cr
\code{\link{pangoFontDescriptionToString}(object)}\cr
\code{\link{pangoFontDescriptionToFilename}(object)}\cr
\code{\link{pangoFontMetricsGetAscent}(object)}\cr
\code{\link{pangoFontMetricsGetDescent}(object)}\cr
\code{\link{pangoFontMetricsGetApproximateCharWidth}(object)}\cr
\code{\link{pangoFontMetricsGetApproximateDigitWidth}(object)}\cr
\code{\link{pangoFontMetricsGetUnderlineThickness}(object)}\cr
\code{\link{pangoFontMetricsGetUnderlinePosition}(object)}\cr
\code{\link{pangoFontMetricsGetStrikethroughThickness}(object)}\cr
\code{\link{pangoFontMetricsGetStrikethroughPosition}(object)}\cr
\code{\link{pangoFontDescribe}(object)}\cr
\code{\link{pangoFontDescribeWithAbsoluteSize}(object)}\cr
\code{\link{pangoFontGetCoverage}(object, language)}\cr
\code{\link{pangoFontGetGlyphExtents}(object, glyph)}\cr
\code{\link{pangoFontGetMetrics}(object, language = NULL)}\cr
\code{\link{pangoFontGetFontMap}(object)}\cr
\code{\link{pangoFontFamilyGetName}(object)}\cr
\code{\link{pangoFontFamilyIsMonospace}(object)}\cr
\code{\link{pangoFontFamilyListFaces}(object)}\cr
\code{\link{pangoFontFaceGetFaceName}(object)}\cr
\code{\link{pangoFontFaceListSizes}(object)}\cr
\code{\link{pangoFontFaceDescribe}(object)}\cr
\code{\link{pangoFontFaceIsSynthesized}(object)}\cr
\code{\link{pangoFontMapCreateContext}(object)}\cr
\code{\link{pangoFontMapLoadFont}(object, context, desc)}\cr
\code{\link{pangoFontMapLoadFontset}(object, context, desc, language)}\cr
\code{\link{pangoFontMapListFamilies}(object)}\cr
\code{\link{pangoFontsetGetFont}(object, wc)}\cr
\code{\link{pangoFontsetGetMetrics}(object)}\cr
\code{\link{pangoFontsetForeach}(object, func, data)}\cr

}
\section{Hierarchy}{\preformatted{
GObject
   +----PangoFont
         +----PangoFcFont
GObject
   +----PangoFontFamily
GObject
   +----PangoFontFace
GObject
   +----PangoFontMap
         +----PangoFcFontMap
GObject
   +----PangoFontset
         +----PangoFontsetSimple
GObject
   +----PangoFontset
         +----PangoFontsetSimple
}}
\section{Interface Derivations}{PangoFont is required by
 \code{\link{PangoCairoFont}}.  
PangoFontMap is required by
 \code{\link{PangoCairoFontMap}}.}
\section{Detailed Description}{Pango supports a flexible architecture where a
particular rendering architecture can supply an
implementation of fonts. The \code{\link{PangoFont}} structure
represents an abstract rendering-system-independent font.
Pango provides routines to list available fonts, and
to load a font of a given description.}
\section{Structures}{\describe{
\item{\verb{PangoFontDescription}}{
The \code{\link{PangoFontDescription}} structure represents the description
of an ideal font. These structures are used both to list
what fonts are available on the system and also for specifying
the characteristics of a font to load.

}
\item{\verb{PangoFontMetrics}}{
A \code{\link{PangoFontMetrics}} structure holds the overall metric information
for a font (possibly restricted to a script). The fields of this
structure are private to implementations of a font backend. See
the documentation of the corresponding getters for documentation
of their meaning.

\describe{
\item{\code{ref_count}}{[numeric] reference count.  Used internally.  See \code{pangoFontMetricsRef()}
            and \code{pangoFontMetricsUnref()}.}
\item{\code{ascent}}{[integer] the distance from the baseline to the highest point of the glyphs of
	 the font. This is positive in practically all fonts.}
\item{\code{descent}}{[integer] the distance from the baseline to the lowest point of the glyphs of
	 the font. This is positive in practically all fonts.}
\item{\code{approximate_char_width}}{[integer] approximate average width of the regular glyphs of
         the font.  Note that for this calculation, East Asian characters
	 (those passing \code{gUnicharIswide()}) are counted as double-width.
	 This produces a more uniform value for this measure across languages
	 and results in more uniform and more expected UI sizes.}
\item{\code{approximate_digit_width}}{[integer] approximate average width of the glyphs for digits
         of the font.}
\item{\code{underline_position}}{[integer] position of the underline. This is normally negative.}
\item{\code{underline_thickness}}{[integer] thickness of the underline.}
\item{\code{strikethrough_position}}{[integer] position of the strikethrough line. This is
	 normally positive.}
\item{\code{strikethrough_thickness}}{[integer] thickness of the strikethrough line.}
}

}
\item{\verb{PangoFont}}{
The \code{\link{PangoFont}} structure is used to represent
a font in a rendering-system-independent matter.
To create an implementation of a \code{\link{PangoFont}},
the rendering-system specific code should allocate
a larger structure that contains a nested
\code{\link{PangoFont}}, fill in the \code{klass} member of
the nested \code{\link{PangoFont}} with a pointer to
a appropriate \verb{PangoFontClass}, then call
\code{pangoFontInit()} on the structure.
  
The \code{\link{PangoFont}} structure contains one member
which the implementation fills in.

}
\item{\verb{PangoFontFamily}}{
The \code{\link{PangoFontFamily}} structure is used to represent a family of related
font faces. The faces in a family share a common design, but differ in
slant, weight, width and other aspects.

}
\item{\verb{PangoFontFace}}{
The \code{\link{PangoFontFace}} structure is used to represent a group of fonts with
the same family, slant, weight, width, but varying sizes.

}
\item{\verb{PangoFontMap}}{
The \code{\link{PangoFontMap}} represents the set of fonts available for a
particular rendering system. This is a virtual object with
implementations being specific to particular rendering systems.  To
create an implementation of a \code{\link{PangoFontMap}}, the rendering-system
specific code should allocate a larger structure that contains a nested
\code{\link{PangoFontMap}}, fill in the \code{klass} member of the nested \code{\link{PangoFontMap}} with a
pointer to a appropriate \verb{PangoFontMapClass}, then call
\code{pangoFontMapInit()} on the structure.
  
The \code{\link{PangoFontMap}} structure contains one member which the implementation
fills in.

}
\item{\verb{PangoFontset}}{
A \code{\link{PangoFontset}} represents a set of \code{\link{PangoFont}} to use
when rendering text. It is the result of resolving a
\code{\link{PangoFontDescription}} against a particular \code{\link{PangoContext}}.
It has operations for finding the component font for
a particular Unicode character, and for finding a composite
set of metrics for the entire fontset.

}
\item{\verb{PangoFontsetSimple}}{
\code{\link{PangoFontsetSimple}} is a implementation of the abstract
\code{\link{PangoFontset}} base class in terms of a list of fonts,
which the creator provides when constructing the
\code{\link{PangoFontsetSimple}}.

}
}}
\section{Enums and Flags}{\describe{
\item{\verb{PangoStyle}}{
An enumeration specifying the various slant styles possible for a font.  

\describe{
\item{\verb{normal}}{ the font is upright.}
\item{\verb{oblique}}{ the font is slanted, but in a roman style.}
\item{\verb{italic}}{ the font is slanted in an italic style.}
}

}
\item{\verb{PangoWeight}}{
An enumeration specifying the weight (boldness) of a font. This is a numerical
value ranging from 100 to 900, but there are some predefined values:

\describe{
\item{\verb{ultralight}}{the thin weight (= 100; Since: 1.24)}
\item{\verb{light}}{the ultralight weight (= 200)}
\item{\verb{normal}}{the light weight (= 300)}
\item{\verb{semibold}}{the book weight (= 380; Since: 1.24)}
\item{\verb{bold}}{the default weight (= 400)}
\item{\verb{ultrabold}}{the normal weight (= 500; Since: 1.24)}
\item{\verb{heavy}}{the semibold weight (= 600)}
\item{\verb{book}}{the bold weight (= 700)}
\item{\verb{ultraheavy}}{the ultrabold weight (= 800)}
\item{\verb{thin}}{the heavy weight (= 900)}
\item{\verb{medium}}{the ultraheavy weight (= 1000; Since: 1.24)}
}

}
\item{\verb{PangoVariant}}{
An enumeration specifying capitalization variant of the font.

\describe{
\item{\verb{normal}}{A normal font.}
\item{\verb{small-caps}}{A font with the lower case characters
  replaced by smaller variants of the capital characters.}
}

}
\item{\verb{PangoStretch}}{
An enumeration specifying the width of the font relative to other designs
within a family.

\describe{
\item{\verb{ultra-condensed}}{ultra condensed width}
\item{\verb{extra-condensed}}{extra condensed width}
\item{\verb{condensed}}{condensed width}
\item{\verb{semi-condensed}}{semi condensed width}
\item{\verb{normal}}{the normal width}
\item{\verb{semi-expanded}}{semi expanded width}
\item{\verb{expanded}}{expanded width}
\item{\verb{extra-expanded}}{extra expanded width}
\item{\verb{ultra-expanded}}{ultra expanded width}
}

}
\item{\verb{PangoFontMask}}{
The bits in a \code{\link{PangoFontMask}} correspond to fields in a
\code{\link{PangoFontDescription}} that have been set.

\describe{
\item{\verb{family}}{the font family is specified.}
\item{\verb{style}}{the font style is specified.}
\item{\verb{variant}}{the font variant is specified.}
\item{\verb{weight}}{the font weight is specified.}
\item{\verb{stretch}}{the font stretch is specified.}
\item{\verb{size}}{the font size is specified.}
}

}
}}
\section{User Functions}{\describe{\item{\code{PangoFontsetForeachFunc(fontset, font, data)}}{
A callback function used by \code{\link{pangoFontsetForeach}} when enumerating
the fonts in a fontset.  
  Since 1.4

\describe{
\item{\code{fontset}}{[\code{\link{PangoFontset}}]  a \code{\link{PangoFontset}}}
\item{\code{font}}{[\code{\link{PangoFont}}]  a font from \code{fontset}}
\item{\code{data}}{[R object]  callback data}
}

\emph{Returns:} [logical]  if \code{TRUE}, stop iteration and return immediately.

}}}
\references{\url{https://docs.gtk.org/Pango/}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
