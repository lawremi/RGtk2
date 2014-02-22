\alias{pangoFontDescriptionBetterMatch}
\name{pangoFontDescriptionBetterMatch}
\title{pangoFontDescriptionBetterMatch}
\description{Determines if the style attributes of \code{new.match} are a closer match
for \code{desc} than those of \code{old.match} are, or if \code{old.match} is \code{NULL},
determines if \code{new.match} is a match at all.
Approximate matching is done for
weight and style; other style attributes must match exactly.
Style attributes are all attributes other than family and size-related
attributes.  Approximate matching for style considers PANGO_STYLE_OBLIQUE
and PANGO_STYLE_ITALIC as matches, but not as good a match as when the
styles are equal.}
\usage{pangoFontDescriptionBetterMatch(object, old.match = NULL, new.match)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\verb{old.match}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}, or \code{NULL}}
\item{\verb{new.match}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
}
\details{Note that \code{old.match} must match \code{desc}.  }
\value{[logical] \code{TRUE} if \code{new.match} is a better match}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
