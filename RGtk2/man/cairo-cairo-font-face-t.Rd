\alias{cairo-cairo-font-face-t}
\alias{CairoFontFace}
\alias{CairoFontType}
\name{cairo-cairo-font-face-t}
\title{cairo\_font\_face\_t}
\description{Base class for fonts}
\section{Methods and Functions}{
\code{\link{cairoFontFaceStatus}(font.face)}\cr
\code{\link{cairoFontFaceGetUserData}(font.face, key)}\cr
\code{\link{cairoFontFaceSetUserData}(font.face, key, user.data)}\cr
\code{\link{cairoFontFaceGetType}(font.face)}\cr

}
\section{Structures}{\describe{\item{\code{CairoFontFace}}{
A \code{\link{CairoFontFace}} specifies all aspects of a font other
than the size or font matrix (a font matrix is used to distort
a font by sheering it or scaling it unequally in the two
directions) . A font face can be set on a \code{\link{Cairo}} by using
\code{\link{cairoSetFontFace}}; the size and font matrix are set with
\code{\link{cairoSetFontSize}} and \code{\link{cairoSetFontMatrix}}.  

}}}
\section{Enums and Flags}{\describe{\item{\code{CairoFontType}}{
\code{\link{CairoFontType}} is used to describe the type of a given font
face or scaled font. The font types are also known as "font
backends" within cairo.
  
The type of a font face is determined by the function used to
create it, which will generally be of the form
cairo\_\emph{type}\_font\_face\_create. The font face type can be queried
with \code{\link{cairoFontFaceGetType}}
  
The various cairo\_font\_face functions can be used with a font face
of any type.
  
The type of a scaled font is determined by the type of the font
face passed to cairo\_scaled\_font\_create. The scaled font type can
be queried with \code{\link{cairoScaledFontGetType}}
  
The various cairo\_scaled\_font functions can be used with scaled
fonts of any type, but some font backends also provide
type-specific functions that must only be called with a scaled font
of the appropriate type. These functions have names that begin with
cairo\_\emph{type}\_scaled\_font such as cairo\_ft\_scaled\_font\_lock\_face.
  
The behavior of calling a type-specific function with a scaled font
of the wrong type is undefined.
  
New entries may be added in future versions.  

  Since  1.2

\describe{
\item{\code{toy}}{ The font was created using cairo's toy font api}
\item{\code{ft}}{ The font is of type FreeType}
\item{\code{win32}}{ The font is of type Win32}
\item{\code{atsui}}{ The font is of type ATSUI}
}

}}}
\references{\url{http://www.cairographics.org/manual/cairo-cairo-font-face-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
