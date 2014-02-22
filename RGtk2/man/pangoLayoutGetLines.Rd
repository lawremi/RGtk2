\alias{pangoLayoutGetLines}
\name{pangoLayoutGetLines}
\title{pangoLayoutGetLines}
\description{Returns the lines of the \code{layout} as a list.}
\usage{pangoLayoutGetLines(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\details{Use the faster \code{\link{pangoLayoutGetLinesReadonly}} if you do not plan
to modify the contents of the lines (glyphs, glyph widths, etc.).  }
\value{[list] element-type Pango.LayoutLine): (transfer none. \acronym{element-type Pango.LayoutLine): (transfer} none. }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
