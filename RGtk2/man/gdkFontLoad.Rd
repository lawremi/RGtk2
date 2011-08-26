\alias{gdkFontLoad}
\name{gdkFontLoad}
\title{gdkFontLoad}
\description{
Loads a font.
\strong{WARNING: \code{gdk_font_load} is deprecated and should not be used in newly-written code.}
}
\usage{gdkFontLoad(font.name)}
\arguments{\item{\verb{font.name}}{a XLFD describing the font to load.}}
\details{The font may be newly loaded or looked up the font in a cache. 
You should make no assumptions about the initial reference count.}
\value{[\code{\link{GdkFont}}] a \code{\link{GdkFont}}, or \code{NULL} if the font could not be loaded.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
