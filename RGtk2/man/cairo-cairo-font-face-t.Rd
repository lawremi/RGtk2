\alias{cairo-cairo-font-face-t}
\alias{cairo_font_face_t}
\name{cairo-cairo-font-face-t}
\title{cairo_font_face_t}
\description{Base class for fonts}
\usage{
\link{cairoFontFaceStatus}(font.face)
\link{cairoFontFaceGetUserData}(font.face, key)
\link{cairoFontFaceSetUserData}(font.face, key, user.data, destroy)
}
\section{Structures}{\describe{\item{\code{cairo_font_face_t}}{
A \code{\link{cairo_font_face_t}} specifies all aspects of a font other
than the size or font matrix (a font matrix is used to distort
a font by sheering it or scaling it unequally in the two
directions) . A font face can be set on a \code{\link{cairo_t}} by using
\code{\link{cairoSetFontFace}}; the size and font matrix are set with
\code{\link{cairoSetFontSize}} and \code{\link{cairoSetFontMatrix}}.  

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/cairo/cairo-cairo-font-face-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
