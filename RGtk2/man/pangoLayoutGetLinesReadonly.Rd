\alias{pangoLayoutGetLinesReadonly}
\name{pangoLayoutGetLinesReadonly}
\title{pangoLayoutGetLinesReadonly}
\description{Returns the lines of the \code{layout} as a list.}
\usage{pangoLayoutGetLinesReadonly(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\details{This is a faster alternative to \code{\link{pangoLayoutGetLines}},
but the user is not expected
to modify the contents of the lines (glyphs, glyph widths, etc.).  
  Since 1.16}
\value{[list] element-type Pango.LayoutLine): (transfer none. \acronym{element-type Pango.LayoutLine): (transfer} none. }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
