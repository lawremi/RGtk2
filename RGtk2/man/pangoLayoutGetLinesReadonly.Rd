\alias{pangoLayoutGetLinesReadonly}
\name{pangoLayoutGetLinesReadonly}
\title{pangoLayoutGetLinesReadonly}
\description{Returns the lines of the \code{layout} as a list.}
\usage{pangoLayoutGetLinesReadonly(object)}
\arguments{\item{\verb{object}}{a \code{\link{PangoLayout}}}}
\details{This is a faster alternative to \code{\link{pangoLayoutGetLines}},
but the user is not expected
to modify the contents of the lines (glyphs, glyph widths, etc.).
  Since 1.16}
\value{[list] a \verb{list} containing
the lines in the layout. This points to internal data of the \code{\link{PangoLayout}} and
must be used with care. It will become invalid on any change to the layout's
text or properties.  No changes should be made to the lines. \emph{[  \acronym{element-type}   Pango.LayoutLine][  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
