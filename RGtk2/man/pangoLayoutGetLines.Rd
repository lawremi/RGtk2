\alias{pangoLayoutGetLines}
\name{pangoLayoutGetLines}
\title{pangoLayoutGetLines}
\description{Returns the lines of the \code{layout} as a list.}
\usage{pangoLayoutGetLines(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoLayout}}]  a \verb{\link{PangoLayout}}}}
\details{Use the faster \code{\link{pangoLayoutGetLinesReadonly}} if you do not plan
to modify the contents of the lines (glyphs, glyph widths, etc.).  }
\value{[list]  a \verb{list} containing the lines in the layout. This
points to internal data of the \verb{\link{PangoLayout}} and must be used with
care. It will become invalid on any change to the layout's
text or properties.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
