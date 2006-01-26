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
\code{\link{pangoFontFindShaper}(object, language, ch)}\cr
\code{\link{pangoFontDescribe}(object)}\cr
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
\code{\link{pangoFontMapLoadFont}(object, context, desc)}\cr
\code{\link{pangoFontMapLoadFontset}(object, context, desc, language)}\cr
\code{\link{pangoFontMapListFamilies}(object)}\cr
\code{\link{pangoFontsetGetFont}(object, wc)}\cr
\code{\link{pangoFontsetGetMetrics}(object)}\cr
\code{\link{pangoFontsetForeach}(object, func, data)}\cr

}
\section{Hierarchy}{\preformatted{
  \link{GObject}
   +----PangoFont
         +----PangoFcFont
  \link{GObject}
   +----PangoFontFamily
  \link{GObject}
   +----PangoFontFace
  \link{GObject}
   +----PangoFontMap
         +----PangoFcFontMap
  \link{GObject}
   +----PangoFontset
         +----\link{PangoFontsetSimple}
  \link{GObject}
   +----\link{PangoFontset}
         +----PangoFontsetSimple
}}
\section{Interface Derivations}{PangoFontMap is required by
 \code{\link{PangoCairoFontMap}}.}
\section{Detailed Description}{Pango supports a flexible architecture where a
particular rendering architecture can supply an
implementation of fonts. The \code{\link{PangoFont}} structure
represents an abstract rendering-system-indepent font.
Pango provides routines to list available fonts, and
to load a font of a given description.}
\section{Structures}{\describe{
\item{\code{PangoFontDescription}}{
The \code{\link{PangoFontDescription}} structure represents the description
of an ideal font. These structures are used both to list
what fonts are available on the system and also for specifying
the characteristics of a font to load.

}
\item{\code{PangoFontMetrics}}{
A \code{\link{PangoFontMetrics}} structure holds the overall metric information
for a font (possibly restricted to a script). The fields of this
structure are private to implementations of a font backend. See
the documentation of the corresponding getters for documentation
of their meaning.

}
\item{\code{PangoFont}}{
The \code{\link{PangoFont}} structure is used to represent
a font in a rendering-system-independent matter.
To create an implementation of a \code{\link{PangoFont}},
the rendering-system specific code should malloc
a larger structure that contains a nested
\code{\link{PangoFont}}, fill in the klass member of
the nested \code{\link{PangoFont}} with a pointer to
a appropriate \code{PangoFontClass}, then call
\code{pangoFontInit()} on the structure.
  
The \code{\link{PangoFont}} structure contains one member
which the implementation fills in:

}
\item{\code{PangoFontFamily}}{
The \code{\link{PangoFontFamily}} structure is used to represent a family of related 
font faces. The faces in a family share a common design, but differ in 
slant, weight, width and other aspects.

}
\item{\code{PangoFontFace}}{
The \code{\link{PangoFontFace}} structure is used to represent a group of fonts with 
the same family, slant, weight, width, but varying sizes.

}
\item{\code{PangoFontMap}}{
The \code{\link{PangoFontMap}} represents the set of fonts available for a
particular rendering system. This is a virtual object with
implementations being specific to particular rendering systems.  To
create an implementation of a \code{\link{PangoFontMap}}, the rendering-system
specific code should malloc a larger structure that contains a nested
\code{\link{PangoFontMap}}, fill in the klass member of the nested \code{\link{PangoFontMap}} with a
pointer to a appropriate \code{PangoFontMapClass}, then call
\code{pangoFontMapInit()} on the structure.
  
The \code{\link{PangoFont}} structure contains one member which the implementation fills in:

}
\item{\code{PangoFontset}}{
A \code{\link{PangoFontset}} represents a set of \code{\link{PangoFont}} to use
when rendering text. It is the result of resolving a
\code{\link{PangoFontDescription}} against a particular \code{\link{PangoContext}}.
It has operations for finding the component font for
a particular Unicode character, and for finding a composite
set of metrics for the entire fontset.

}
\item{\code{PangoFontsetSimple}}{
\code{PangoFontSetSimple} is a implementation of the abstract
\code{PangoFontSet} base class in terms of a list of fonts,
which the creator provides when constructing the
\code{PangoFontSetSimple}.

}
}}
\section{Enums and Flags}{\describe{
\item{\code{PangoStyle}}{
An enumeration specifying the various slant styles possible for a font.  

\describe{
\item{\code{PANGO_STYLE_NORMAL (normal)}}{ the font is upright.}
\item{\code{PANGO_STYLE_OBLIQUE (oblique)}}{ the font is slanted, but in a roman style.}
\item{\code{PANGO_STYLE_ITALIC (italic)}}{ the font is slanted in an italic style.}
}

}
\item{\code{PangoWeight}}{
An enumeration specifying the weight (boldness) of a font. This is a numerical
value ranging from 100 to 900, but there are some predefined values:

\describe{
\item{\code{PANGO_WEIGHT_ULTRALIGHT (ultralight)}}{the ultralight weight (= 200)}
\item{\code{PANGO_WEIGHT_LIGHT (light)}}{ the light weight (=300)}
\item{\code{PANGO_WEIGHT_NORMAL (normal)}}{the default weight (= 400)}
\item{\code{PANGO_WEIGHT_SEMIBOLD (semibold)}}{a weight intermediate between normal and bold (=600)}
\item{\code{PANGO_WEIGHT_BOLD (bold)}}{the bold weight (= 700)}
\item{\code{PANGO_WEIGHT_ULTRABOLD (ultrabold)}}{the ultrabold weight (= 800)}
\item{\code{PANGO_WEIGHT_HEAVY (heavy)}}{the heavy weight (= 900)}
}

}
\item{\code{PangoVariant}}{
An enumeration specifying capitalization variant of the font.

\describe{
\item{\code{PANGO_VARIANT_NORMAL (normal)}}{A normal font.}
\item{\code{PANGO_VARIANT_SMALL_CAPS (small-caps)}}{A font with the lower case characters
  replaced by smaller variants of the capital characters.}
}

}
\item{\code{PangoStretch}}{
An enumeration specifying the width of the font relative to other designs
within a family.

\describe{
\item{\code{PANGO_STRETCH_ULTRA_CONDENSED (ultra-condensed)}}{\emph{undocumented
}}
\item{\code{PANGO_STRETCH_EXTRA_CONDENSED (extra-condensed)}}{\emph{undocumented
}}
\item{\code{PANGO_STRETCH_CONDENSED (condensed)}}{\emph{undocumented
}}
\item{\code{PANGO_STRETCH_SEMI_CONDENSED (semi-condensed)}}{\emph{undocumented
}}
\item{\code{PANGO_STRETCH_NORMAL (normal)}}{the normal width}
\item{\code{PANGO_STRETCH_SEMI_EXPANDED (semi-expanded)}}{\emph{undocumented
}}
\item{\code{PANGO_STRETCH_EXPANDED (expanded)}}{\emph{undocumented
}}
\item{\code{PANGO_STRETCH_EXTRA_EXPANDED (extra-expanded)}}{\emph{undocumented
}}
\item{\code{PANGO_STRETCH_ULTRA_EXPANDED (ultra-expanded)}}{\emph{undocumented
}}
}

}
\item{\code{PangoFontMask}}{
The bits in a \code{\link{PangoFontMask}} correspond to fields in a  
\code{\link{PangoFontDescription}} that have been set.

\describe{
\item{\code{PANGO_FONT_MASK_FAMILY (family)}}{the font family is specified.}
\item{\code{PANGO_FONT_MASK_STYLE (style)}}{the font style is specified.}
\item{\code{PANGO_FONT_MASK_VARIANT (variant)}}{the font variant is specified.}
\item{\code{PANGO_FONT_MASK_WEIGHT (weight)}}{the font weight is specified.}
\item{\code{PANGO_FONT_MASK_STRETCH (stretch)}}{the font stretch is specified.}
\item{\code{PANGO_FONT_MASK_SIZE (size)}}{the font size is specified.}
}

}
}}
\section{User Functions}{\describe{\item{\code{PangoFontsetForeachFunc(fontset, font, data)}}{
A callback function used by \code{\link{pangoFontsetForeach}} when enumerating
the fonts in a fontset.  

  Since  1.4

\describe{
\item{\code{fontset}}{[\code{\link{PangoFontset}}]  a \code{\link{PangoFontset}}}
\item{\code{font}}{[\code{\link{PangoFont}}]  a font from \code{fontset}}
\item{\code{data}}{[R object]  callback data}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Fonts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
