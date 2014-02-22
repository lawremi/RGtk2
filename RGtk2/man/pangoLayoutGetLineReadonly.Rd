\alias{pangoLayoutGetLineReadonly}
\name{pangoLayoutGetLineReadonly}
\title{pangoLayoutGetLineReadonly}
\description{Retrieves a particular line from a \code{\link{PangoLayout}}.}
\usage{pangoLayoutGetLineReadonly(object, line)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{line}}{[integer]  the index of a line, which must be between 0 and
       \code{pango_layout_get_line_count(layout) - 1}, inclusive.}
}
\details{This is a faster alternative to \code{\link{pangoLayoutGetLine}},
but the user is not expected
to modify the contents of the line (glyphs, glyph widths, etc.).  
  Since 1.16}
\value{[\code{\link{PangoLayoutLine}}]  the requested \code{\link{PangoLayoutLine}}, or \code{NULL} if the
              index is out of range. This layout line can
              be ref'ed and retained, but will become invalid
              if changes are made to the \code{\link{PangoLayout}}.
              No changes should be made to the line.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
