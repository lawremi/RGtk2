\alias{cairo-font-face}
\alias{CairoFontFace}
\alias{cairoFontFace}
\alias{CairoFontType}
\name{cairo-font-face}
\title{cairo_font_face_t}
\description{Base class for font faces}
\section{Methods and Functions}{
\code{\link{cairoFontFaceStatus}(font.face)}\cr
\code{\link{cairoFontFaceGetType}(font.face)}\cr
\code{\link{cairoFontFaceSetUserData}(font.face, key, user.data)}\cr
\code{\link{cairoFontFaceGetUserData}(font.face, key)}\cr
\code{cairoFontFace(family, slant, weight)}
}
\section{Detailed Description}{\code{\link{CairoFontFace}} represents a particular font at a particular weight,
slant, and other characteristic but no size, transformation, or size.
  
Font faces are created using \dfn{font-backend}-specific
constructors, typically of the form
cairo_\emph{backend}\code{fontFaceCreate()},
or implicitly using the \dfn{toy} text API by way of
\code{\link{cairoSelectFontFace}}.  The resulting face can be accessed using
\code{\link{cairoGetFontFace}}.}
\section{Structures}{\describe{\item{\verb{CairoFontFace}}{
A \code{\link{CairoFontFace}} specifies all aspects of a font other
than the size or font matrix (a font matrix is used to distort
a font by sheering it or scaling it unequally in the two
directions) . A font face can be set on a \code{\link{Cairo}} by using
\code{\link{cairoSetFontFace}}; the size and font matrix are set with
\code{\link{cairoSetFontSize}} and \code{\link{cairoSetFontMatrix}}.
  
There are various types of font faces, depending on the
\dfn{font backend} they use. The type of a
font face can be queried using \code{\link{cairoFontFaceGetType}}.
  
Memory management of \code{\link{CairoFontFace}} is done with
\code{cairoFontFaceReference()} and \code{cairoFontFaceDestroy()}.  

}}}
\section{Convenient Construction}{\code{cairoFontFace} is the result of collapsing the constructors of \code{cairo_font_face_t} (\code{\link{cairoToyFontFaceCreate}}, \code{\link{cairoUserFontFaceCreate}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\verb{CairoFontType}}{
\code{\link{CairoFontType}} is used to describe the type of a given font
face or scaled font. The font types are also known as "font
backends" within cairo.
  
The type of a font face is determined by the function used to
create it, which will generally be of the form
cairo_\emph{type}\code{fontFaceCreate()}. The font face type can be queried
with \code{\link{cairoFontFaceGetType}}
  
The various \code{\link{CairoFontFace}} functions can be used with a font face
of any type.
  
The type of a scaled font is determined by the type of the font
face passed to \code{\link{cairoScaledFontCreate}}. The scaled font type can
be queried with \code{\link{cairoScaledFontGetType}}
  
The various \code{\link{CairoScaledFont}} functions can be used with scaled
fonts of any type, but some font backends also provide
type-specific functions that must only be called with a scaled font
of the appropriate type. These functions have names that begin with
cairo_\emph{type}\code{scaledFont()} such as \code{cairoFtScaledFontLockFace()}.
  
The behavior of calling a type-specific function with a scaled font
of the wrong type is undefined.
  
New entries may be added in future versions.  
  Since 1.2

\describe{
\item{\verb{toy}}{ The font was created using cairo's toy font api}
\item{\verb{ft}}{ The font is of type FreeType}
\item{\verb{win32}}{ The font is of type Win32}
\item{\verb{atsui}}{ The font is of type Quartz (Since: 1.6)}
}

}}}
\references{\url{https://www.cairographics.org/manual/cairo-cairo-font-face-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
