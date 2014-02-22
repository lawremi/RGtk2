\alias{pangoLayoutGetUnknownGlyphsCount}
\name{pangoLayoutGetUnknownGlyphsCount}
\title{pangoLayoutGetUnknownGlyphsCount}
\description{Counts the number unknown glyphs in \code{layout}.  That is, zero if
glyphs for all characters in the layout text were found, or more
than zero otherwise.}
\usage{pangoLayoutGetUnknownGlyphsCount(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\details{This function can be used to determine if there are any fonts
available to render all characters in a certain string, or when
used in combination with \code{PANGO_ATTR_FALLBACK}, to check if a
certain font supports all the characters in the string.  
  Since 1.16}
\value{[integer]  The number of unknown glyphs in \code{layout}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
