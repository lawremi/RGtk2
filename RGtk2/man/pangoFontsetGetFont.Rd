\alias{pangoFontsetGetFont}
\name{pangoFontsetGetFont}
\title{pangoFontsetGetFont}
\description{Returns the font in the fontset that contains the best glyph for the
Unicode character \code{wc}.}
\usage{pangoFontsetGetFont(object, wc)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoFontset}}]  a \verb{\link{PangoFontset}}}
\item{\verb{wc}}{[numeric]  a Unicode character}
}
\value{[\verb{\link{PangoFont}}]  a \verb{\link{PangoFont}}. The caller must call g_object_unref when finished
         with the font.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
