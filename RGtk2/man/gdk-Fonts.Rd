\alias{gdk-Fonts}
\alias{GdkFont}
\alias{GdkFontType}
\name{gdk-Fonts}
\title{Fonts}
\description{Loading and manipulating fonts}
\section{Methods and Functions}{
\code{\link{gdkFontLoad}(font.name)}\cr
\code{\link{gdkFontLoadForDisplay}(display, font.name)}\cr
\code{\link{gdkFontLoadForDisplay}(display, font.name)}\cr
\code{\link{gdkFontsetLoad}(fontset.name)}\cr
\code{\link{gdkFontsetLoadForDisplay}(display, fontset.name)}\cr
\code{\link{gdkFontsetLoadForDisplay}(display, fontset.name)}\cr
\code{\link{gdkFontFromDescription}(font.desc)}\cr
\code{\link{gdkFontFromDescriptionForDisplay}(display, font.desc)}\cr
\code{\link{gdkFontFromDescriptionForDisplay}(display, font.desc)}\cr
\code{\link{gdkFontGetDisplay}(object)}\cr
\code{\link{gdkFontGetDisplay}(object)}\cr
\code{\link{gdkFontId}(object)}\cr
\code{\link{gdkStringExtents}(object, string)}\cr
\code{\link{gdkTextExtents}(object, string)}\cr
\code{\link{gdkTextExtentsWc}(object, text)}\cr
\code{\link{gdkStringWidth}(object, string)}\cr
\code{\link{gdkTextWidth}(object, text, text.length = -1)}\cr
\code{\link{gdkTextWidthWc}(object, text)}\cr
\code{\link{gdkCharWidth}(object, character)}\cr
\code{\link{gdkCharWidthWc}(object, character)}\cr
\code{\link{gdkStringMeasure}(object, string)}\cr
\code{\link{gdkTextMeasure}(object, text, text.length = -1)}\cr
\code{\link{gdkCharMeasure}(object, character)}\cr
\code{\link{gdkStringHeight}(object, string)}\cr
\code{\link{gdkTextHeight}(object, text, text.length = -1)}\cr
\code{\link{gdkCharHeight}(object, character)}\cr
}
\section{Detailed Description}{The \code{\link{GdkFont}} data type represents a font for drawing on
the screen. These functions provide support for
loading fonts, and also for determining the dimensions
of characters and strings when drawn with a particular
font.
  
Fonts in X are specified by a
\dfn{X Logical Font Description}.
The following description is considerably simplified.
For definitive information about XLFD's see the
X reference documentation. A X Logical Font Description (XLFD)
consists of a sequence of fields separated (and surrounded by) '-'
characters. For example, Adobe Helvetica Bold 12 pt, has the
full description:
\preformatted{"-adobe-helvetica-bold-r-normal--12-120-75-75-p-70-iso8859-1"
}
  
The fields in the XLFD are:
\tabular{ll}{
Foundry \tab the company or organization where the font originated. \cr
Family \tab the font family (a group of related font designs). \cr
Weight \tab A name for the font's typographic weight
For example, 'bold' or 'medium'). \cr
Slant \tab The slant of the font. Common values are 'R' for Roman,
'I' for italoc, and 'O' for oblique. \cr
Set Width \tab A name for the width of the font. For example,
'normal' or 'condensed'. \cr
Add Style \tab Additional information to distinguish a font from
other fonts of the same family. \cr
Pixel Size \tab The body size of the font in pixels. \cr
Point Size \tab The body size of the font in 10ths of a point.
(A   \dfn{point}   is 1/72.27 inch)  \cr
Resolution X \tab The horizontal resolution that the font was designed for. \cr
Resolution Y \tab The vertical resolution that the font was designed for . \cr
Spacing \tab The type of spacing for the font - can be 'p' for proportional,
'm' for monospaced or 'c' for charcell. \cr
Average Width \tab The average width of a glyph in the font. For monospaced
and charcell fonts, all glyphs in the font have this width \cr
Charset Registry \tab The registration authority that owns the encoding for
the font. Together with the Charset Encoding field, this
defines the character set for the font. \cr
Charset Encoding \tab An identifier for the particular character set encoding. \cr
}
  
When specifying a font via a X logical Font Description,
'*' can be used as a wildcard to match any portion of
the XLFD. For instance, the above example could
also be specified as
\preformatted{"-*-helvetica-bold-r-normal--*-120-*-*-*-*-iso8859-1"
}
It is generally a good idea to use wildcards for any
portion of the XLFD that your program does not care
about specifically, since that will improve the
chances of finding a matching font.
  
A \dfn{fontset} is a list of fonts
that is used for drawing international text that may
contain characters from a number of different character
sets. It is represented by a list of XLFD's.
  
The font for a given character set is determined by going
through the list of XLFD's in order. For each one, if
the registry and and encoding fields match the desired
character set, then that font is used, otherwise if
the XLFD contains wild-cards for the registry and encoding
fields, the registry and encoding for the desired character
set are substituted in and a lookup is done. If a match is found
that font is used. Otherwise, processing continues
on to the next font in the list.
  
The functions for determining the metrics of a string
come in several varieties that can take a number
of forms of string input:
\describe{
\item{8-bit string}{    When using functions like \code{\link{gdkStringWidth}} that
    take a \verb{character}, if the font is of type
    \code{GDK_FONT_FONT} and is an 8-bit font, then each
    \verb{character} indexes the glyphs in the font directly.
    }
\item{16-bit string}{    For functions taking a \verb{character}, if the
    font is of type \code{GDK_FONT_FONT}, and is a 16-bit
    font, then the \verb{character} argument is
    interpreted as a \verb{integer} cast to
    a \verb{character} and each \verb{integer}
    indexes the glyphs in the font directly.
    }
\item{Multibyte string}{    For functions taking a \verb{character}, if the
    font is of type \code{GDK_FONT_FONTSET}, then the input
    string is interpreted as a \dfn{multibyte}
    encoded according to the current locale. (A multibyte
    string is one in which each character may consist
    of one or more bytes, with different lengths for different
    characters in the string). They can be converted to and
    from wide character strings (see below) using
    \code{gdkWcstombs()} and \code{gdkMbstowcs()}.) The string will
    be rendered using one or more different fonts from
    the fontset.
    }
\item{Wide character string}{    For a number of the text-measuring functions, GDK
    provides a variant (such as \code{\link{gdkTextWidthWc}}) which
    takes a \verb{numeric} instead of a
    \verb{character}. The input is then taken to
    be a wide character string in the encoding of the
    current locale. (A wide character string is a string
    in which each character consists of several bytes,
    and the width of each character in the string is
    constant.)
    }
}
  
GDK provides functions to determine a number of different
measurements (metrics) for a given string. (Need diagram
here).
\describe{
\item{ascent}{    The vertical distance from the origin of the drawing
    opereration to the top of the drawn character.
    }
\item{descent}{    The vertical distance from the origin of the drawing
    opereration to the bottom of the drawn character.
    }
\item{left bearing}{    The horizontal distance from the origin of the drawing
    operation to the left-most part of the drawn character.
    }
\item{right bearing}{    The horizontal distance from the origin of the drawing
    operation to the right-most part of the drawn character.
    }
\item{width bearing}{    The horizontal distance from the origin of the drawing
    operation to the correct origin for drawing another
    string to follow the current one. Depending on the
    font, this could be greater than or less than the
    right bearing.
    }
}}
\section{Structures}{\describe{\item{\verb{GdkFont}}{
\strong{WARNING: \code{GdkFont} is deprecated and should not be used in newly-written code.}
The \code{GdkFont} structure represents a font or fontset. It
contains the following public fields. A new \code{GdkFont}
structure is returned by \code{\link{gdkFontLoad}} or \code{\link{gdkFontsetLoad}},
and is reference counted with \code{gdkFontRef()} and \code{gdkFontUnref()}

\describe{
\item{\verb{type}}{[\code{\link{GdkFontType}}] a value of type \code{\link{GdkFontType}} which indicates
whether this font is a single font or a fontset.}
\item{\verb{ascent}}{[integer] the maximum distance that the font, when drawn,
ascends above the baseline.}
\item{\verb{descent}}{[integer] the maximum distance that the font, when drawn,
descends below the baseline.}
}

}}}
\section{Enums and Flags}{\describe{\item{\verb{GdkFontType}}{
\strong{WARNING: \code{GdkFontType} is deprecated and should not be used in newly-written code.}
Indicates the type of a font. The possible values
are currently:

\describe{
\item{\verb{font}}{the font is a single font.}
\item{\verb{fontset}}{the font is a fontset.}
}

}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Fonts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
