\alias{gdkFontLoadForDisplay}
\name{gdkFontLoadForDisplay}
\title{gdkFontLoadForDisplay}
\description{
Loads a font for use on \code{display}.
\strong{WARNING: \code{gdk_font_load_for_display} is deprecated and should not be used in newly-written code.}
}
\usage{gdkFontLoadForDisplay(display, font.name)}
\arguments{
\item{\verb{display}}{[\verb{\link{GdkDisplay}}]  a \verb{\link{GdkDisplay}}}
\item{\verb{font.name}}{[character]  a XLFD describing the font to load.}
}
\details{The font may be newly loaded or looked up the font in a cache. 
You should make no assumptions about the initial reference count.  

  Since  2.2}
\value{[\verb{\link{GdkFont}}]  a \verb{\link{GdkFont}}, or \code{NULL} if the font could not be loaded.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
