\alias{cairoShowTextGlyphs}
\name{cairoShowTextGlyphs}
\title{cairoShowTextGlyphs}
\description{This operation has rendering effects similar to \code{\link{cairoShowGlyphs}}
but, if the target surface supports it, uses the provided text and
cluster mapping to embed the text for the glyphs shown in the output.
If the target does not support the extended attributes, this function
acts like the basic \code{\link{cairoShowGlyphs}} as if it had been passed
\code{glyphs} and \code{num.glyphs}.}
\usage{cairoShowTextGlyphs(cr, utf8, glyphs, clusters, cluster.flags)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{utf8}}{[char]  a string of text encoded in UTF-8}
\item{\verb{glyphs}}{[\code{\link{CairoGlyph}}]  list of glyphs to show}
\item{\verb{clusters}}{[\code{\link{CairoTextCluster}}]  list of cluster mapping information}
\item{\verb{cluster.flags}}{[\code{\link{CairoTextClusterFlags}}]  cluster mapping flags}
}
\details{The mapping between \code{utf8} and \code{glyphs} is provided by a list of
\dfn{clusters}.  Each cluster covers a number of
text bytes and glyphs, and neighboring clusters cover neighboring
areas of \code{utf8} and \code{glyphs}.  The clusters should collectively cover \code{utf8}
and \code{glyphs} in entirety.
  
The first cluster always covers bytes from the beginning of \code{utf8}.
If \code{cluster.flags} do not have the \code{CAIRO_TEXT_CLUSTER_FLAG_BACKWARD}
set, the first cluster also covers the beginning
of \code{glyphs}, otherwise it covers the end of the \code{glyphs} list and
following clusters move backward.
  
See \code{\link{CairoTextCluster}} for constraints on valid clusters.  
  Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
