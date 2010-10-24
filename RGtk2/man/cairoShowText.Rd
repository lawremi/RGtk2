\alias{cairoShowText}
\name{cairoShowText}
\title{cairoShowText}
\description{A drawing operator that generates the shape from a string of UTF-8
characters, rendered according to the current font_face, font_size
(font_matrix), and font_options.}
\usage{cairoShowText(cr, utf8)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{utf8}}{[char]  a string of text encoded in UTF-8, or \code{NULL}}
}
\details{This function first computes a set of glyphs for the string of
text. The first glyph is placed so that its origin is at the
current point. The origin of each subsequent glyph is offset from
that of the previous glyph by the advance values of the previous
glyph.
  
After this call the current point is moved to the origin of where
the next glyph would be placed in this same progression. That is,
the current point will be at the origin of the final glyph offset
by its advance values. This allows for easy display of a single
logical string with multiple calls to \code{\link{cairoShowText}}.
  
Note: The \code{\link{cairoShowText}} function call is part of what the cairo
designers call the "toy" text API. It is convenient for short demos
and simple programs, but it is not expected to be adequate for
serious text-using applications. See \code{\link{cairoShowGlyphs}} for the
"real" text display API in cairo.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
