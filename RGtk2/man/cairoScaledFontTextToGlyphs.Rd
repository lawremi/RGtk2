\alias{cairoScaledFontTextToGlyphs}
\name{cairoScaledFontTextToGlyphs}
\title{cairoScaledFontTextToGlyphs}
\description{Converts UTF-8 text to a list of glyphs, optionally with cluster
mapping, that can be used to render later using \code{scaled.font}.}
\usage{cairoScaledFontTextToGlyphs(scaled.font, x, y, utf8, utf8.len = -1)}
\arguments{
\item{\verb{scaled.font}}{[\code{\link{CairoScaledFont}}]  a \code{\link{CairoScaledFont}}}
\item{\verb{x}}{[numeric]  X position to place first glyph}
\item{\verb{y}}{[numeric]  Y position to place first glyph}
\item{\verb{utf8}}{[char]  a string of text encoded in UTF-8}
\item{\verb{utf8.len}}{[integer]  length of \code{utf8} in bytes, or -1 if it is NUL-terminated}
}
\details{If \code{glyphs} initially points to a non-\code{NULL} value, that list is used
as a glyph buffer, and \code{num.glyphs} should point to the number of glyph
entries available there.  If the provided glyph list is too short for
the conversion,  Upon return, \code{num.glyphs} always contains the
number of generated glyphs.  If the value \code{glyphs} points to has changed
after the call,  This may happen even if the provided
array was large enough.
  
If \code{clusters} is not \code{NULL}, \code{num.clusters} and \code{cluster.flags} should not be \code{NULL},
and cluster mapping will be computed.
The semantics of how cluster list allocation works is similar to the glyph
array.  That is,
if \code{clusters} initially points to a non-\code{NULL} value, that list is used
as a cluster buffer, and \code{num.clusters} should point to the number of cluster
entries available there.  If the provided cluster list is too short for
the conversion,  Upon return, \code{num.clusters} always contains the
number of generated clusters.  If the value \code{clusters} points at has changed
after the call,  This may happen even if the provided
array was large enough.
  
In the simplest case, \code{glyphs} and \code{clusters} can point to \code{NULL} initially
and a suitable list will be allocated.  In code:
\preformatted{
glyphs <- scaled_font$textToGlyphs(x, y, utf8, utf8_len)

if (glyphs$retval == CairoStatus["success"])
  cr$showTextGlyphs(utf8, utf8_len,
                    glyphs$glyphs, glyphs$num_glyphs,
                    glyphs$clusters, glyphs$num_clusters,
                    glyphs$cluster_flags)

}
  
If no cluster mapping is needed:
\preformatted{
glyphs <- scaled_font$textToGlyphs(x, y, utf8, utf8_len)

if (glyphs$retval == CairoStatus["success"]) {
  cr$showGlyphs(glyphs$glyphs, glyphs$num_glyphs)
}
}
  
If stack-based glyph and cluster lists are to be used for small
arrays:
\preformatted{
## R user obviously does not allocate things on the stack.
## This is the same as the first example.

glyphs <- scaled_font$textToGlyphs(x, y, utf8, utf8_len)

if (glyphs$retval == CairoStatus["success"])
  cr$showTextGlyphs(utf8, utf8_len,
                    glyphs$glyphs, glyphs$num_glyphs,
                    glyphs$clusters, glyphs$num_clusters,
                    glyphs$cluster_flags)
}
  
For details of how \code{clusters}, \code{num.clusters}, and \code{cluster.flags} map input
UTF-8 text to the output glyphs see \code{\link{cairoShowTextGlyphs}}.
  
The output values can be readily passed to \code{\link{cairoShowTextGlyphs}}
\code{\link{cairoShowGlyphs}}, or related functions, assuming that the exact
same \code{scaled.font} is used for the operation.  
  Since 1.8}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS} upon success, or an error status
if the input values are wrong or if conversion failed.  If the input
values are correct but the conversion failed, the error status is also
set on \code{scaled.font}.}
\item{\verb{glyphs}}{[\code{\link{CairoGlyph}}]  pointer to list of glyphs to fill}
\item{\verb{num.glyphs}}{[integer]  pointer to number of glyphs}
\item{\verb{clusters}}{[\code{\link{CairoTextCluster}}]  pointer to list of cluster mapping information to fill, or \code{NULL}}
\item{\verb{num.clusters}}{[integer]  pointer to number of clusters, or \code{NULL}}
\item{\verb{cluster.flags}}{[\code{\link{CairoTextClusterFlags}}]  pointer to location to store cluster flags corresponding to the
                output \code{clusters}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
