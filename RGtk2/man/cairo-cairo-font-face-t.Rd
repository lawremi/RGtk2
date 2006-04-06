\alias{cairo-cairo-font-face-t}
\alias{CairoFontFace}
\name{cairo-cairo-font-face-t}
\title{cairo\_font\_face\_t}
\description{Base class for fonts}
\section{Methods and Functions}{
\code{\link{cairoFontFaceStatus}(font.face)}\cr
\code{\link{cairoFontFaceGetUserData}(font.face, key)}\cr
\code{\link{cairoFontFaceSetUserData}(font.face, key, user.data)}\cr

}
\section{Structures}{\describe{\item{\code{CairoFontFace}}{
A \code{\link{CairoFontFace}} specifies all aspects of a font other
than the size or font matrix (a font matrix is used to distort
a font by sheering it or scaling it unequally in the two
directions) . A font face can be set on a \code{\link{Cairo}} by using
\code{\link{cairoSetFontFace}}; the size and font matrix are set with
\code{\link{cairoSetFontSize}} and \code{\link{cairoSetFontMatrix}}.  

}}}
\references{\url{http://www.cairographics.org/manual/cairo-cairo-font-face-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
