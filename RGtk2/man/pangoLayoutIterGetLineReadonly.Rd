\alias{pangoLayoutIterGetLineReadonly}
\name{pangoLayoutIterGetLineReadonly}
\title{pangoLayoutIterGetLineReadonly}
\description{Gets the current line for read-only access.}
\usage{pangoLayoutIterGetLineReadonly(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayoutIter}}]  a \code{\link{PangoLayoutIter}}}}
\details{This is a faster alternative to \code{\link{pangoLayoutIterGetLine}},
but the user is not expected
to modify the contents of the line (glyphs, glyph widths, etc.).  
  Since 1.16}
\value{[\code{\link{PangoLayoutLine}}]  the current line, that should not be modified.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
