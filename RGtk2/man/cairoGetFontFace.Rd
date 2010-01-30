\alias{cairoGetFontFace}
\name{cairoGetFontFace}
\title{cairoGetFontFace}
\description{Gets the current font face for a \verb{\link{Cairo}}.}
\usage{cairoGetFontFace(cr)}
\arguments{\item{\verb{cr}}{[\verb{\link{Cairo}}]  a \verb{\link{Cairo}}}}
\value{[\verb{\link{CairoFontFace}}]  the current font face. To keep a reference to it, you must call
cairo_font_face_reference.

This function never returns \code{NULL}. If memory cannot be allocated, a
special "nil" \verb{\link{CairoFontFace}} object will be returned on which
\code{\link{cairoFontFaceStatus}} returns \code{CAIRO_STATUS_NO_MEMORY}. Using
this nil object will cause its error state to propagate to other
objects it is passed to, (for example, calling
\code{\link{cairoSetFontFace}} with a nil font will trigger an error that
will shutdown the \verb{\link{Cairo}} object).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
