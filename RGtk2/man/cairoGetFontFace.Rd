\alias{cairoGetFontFace}
\name{cairoGetFontFace}
\title{cairoGetFontFace}
\description{Gets the current font face for a \code{\link{cairo_t}}.}
\usage{cairoGetFontFace(cr)}
\arguments{\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{cairo_t}}}}
\value{[\code{\link{cairo_font_face_t}}]  the current font object. Can return \code{NULL}
  on out-of-memory or if the context is already in
  an error state.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
