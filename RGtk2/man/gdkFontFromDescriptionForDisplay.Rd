\alias{gdkFontFromDescriptionForDisplay}
\name{gdkFontFromDescriptionForDisplay}
\title{gdkFontFromDescriptionForDisplay}
\description{
Loads a \code{\link{GdkFont}} based on a Pango font description for use on \code{display}. 
This font will only be an approximation of the Pango font, and
internationalization will not be handled correctly. This function
should only be used for legacy code that cannot be easily converted
to use Pango. Using Pango directly will produce better results.
\strong{WARNING: \code{gdk_font_from_description_for_display} is deprecated and should not be used in newly-written code.}
}
\usage{gdkFontFromDescriptionForDisplay(display, font.desc)}
\arguments{
\item{\verb{display}}{a \code{\link{GdkDisplay}}}
\item{\verb{font.desc}}{a \code{\link{PangoFontDescription}}.}
}
\details{Since 2.2}
\value{[\code{\link{GdkFont}}] the newly loaded font, or \code{NULL} if the font
cannot be loaded.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
