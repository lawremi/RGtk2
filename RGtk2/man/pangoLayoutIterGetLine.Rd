\alias{pangoLayoutIterGetLine}
\name{pangoLayoutIterGetLine}
\title{pangoLayoutIterGetLine}
\description{Gets the current line.}
\usage{pangoLayoutIterGetLine(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayoutIter}}]  a \code{\link{PangoLayoutIter}}}}
\details{Use the faster \code{\link{pangoLayoutIterGetLineReadonly}} if you do not plan
to modify the contents of the line (glyphs, glyph widths, etc.).  }
\value{[\code{\link{PangoLayoutLine}}]  the current line.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
