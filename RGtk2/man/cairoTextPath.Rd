\alias{cairoTextPath}
\name{cairoTextPath}
\title{cairoTextPath}
\description{Adds closed paths for text to the current path.  The generated
path if filled, achieves an effect similar to that of
\code{\link{cairoShowText}}.}
\usage{cairoTextPath(cr, utf8)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{utf8}}{[char]  a string of text encoded in UTF-8, or \code{NULL}}
}
\details{Text conversion and positioning is done similar to \code{\link{cairoShowText}}.
  
Like \code{\link{cairoShowText}}, After this call the current point is
moved to the origin of where the next glyph would be placed in
this same progression.  That is, the current point will be at
the origin of the final glyph offset by its advance values.
This allows for chaining multiple calls to to \code{\link{cairoTextPath}}
without having to set current point in between.
  
Note: The \code{\link{cairoTextPath}} function call is part of what the cairo
designers call the "toy" text API. It is convenient for short demos
and simple programs, but it is not expected to be adequate for
serious text-using applications. See \code{\link{cairoGlyphPath}} for the
"real" text path API in cairo.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
