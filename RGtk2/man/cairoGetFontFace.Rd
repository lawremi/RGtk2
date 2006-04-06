\alias{cairoGetFontFace}
\name{cairoGetFontFace}
\title{cairoGetFontFace}
\description{Gets the current font face for a \code{\link{Cairo}}.}
\usage{cairoGetFontFace(cr)}
\arguments{\item{\code{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}}
\value{[\code{\link{CairoFontFace}}]  the current font object. Can return \code{NULL}
  on out-of-memory or if the context is already in
  an error state. To keep
  a reference to it, you must call \code{cairo\Font\Face\Reference()}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
