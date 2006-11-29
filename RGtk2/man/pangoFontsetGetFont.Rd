\alias{pangoFontsetGetFont}
\name{pangoFontsetGetFont}
\title{pangoFontsetGetFont}
\description{Returns the font in the fontset that contains the best glyph for the
Unicode character \code{wc}.}
\usage{pangoFontsetGetFont(object, wc)}
\arguments{
\item{\code{object}}{[\code{\link{PangoFontset}}]  a \code{\link{PangoFontset}}}
\item{\code{wc}}{[numeric]  a Unicode character}
}
\value{[\code{\link{PangoFont}}]  a \code{\link{PangoFont}}. The caller must call g\_object\_unref when finished
         with the font.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
