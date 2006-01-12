\alias{cairoSetFontFace}
\name{cairoSetFontFace}
\title{cairoSetFontFace}
\description{Replaces the current \code{\link{cairo_font_face_t}} object in the \code{\link{cairo_t}} with
\code{font.face}. The replaced font face in the \code{\link{cairo_t}} will be
destroyed if there are no other references to it.}
\usage{cairoSetFontFace(cr, font.face)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{cairo_t}}}
\item{\code{font.face}}{[\code{\link{cairo_font_face_t}}]  a \code{\link{cairo_font_face_t}}, or \code{NULL} to restore to the default font}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
