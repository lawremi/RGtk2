\alias{cairoGetFontFace}
\name{cairoGetFontFace}
\title{cairoGetFontFace}
\description{Gets the current font face for a \code{\link{Cairo}}.}
\usage{cairoGetFontFace(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}}
\value{[\code{\link{CairoFontFace}}]  the current font face. To keep a reference to it,
This function never returns \code{NULL}. If memory cannot be allocated, a
special "nil" \code{\link{CairoFontFace}} object will be returned on which
\code{\link{cairoFontFaceStatus}} returns \code{CAIRO_STATUS_NO_MEMORY}. Using
this nil object will cause its error state to propagate to other
objects it is passed to, (for example, calling
\code{\link{cairoSetFontFace}} with a nil font will trigger an error that
will shutdown the \code{\link{Cairo}} object).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
