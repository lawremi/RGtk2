\alias{cairo-user-font}
\alias{cairo_user_scaled_font_init_func_t}
\alias{cairo_user_scaled_font_render_glyph_func_t}
\alias{cairo_user_scaled_font_text_to_glyphs_func_t}
\alias{cairo_user_scaled_font_unicode_to_glyph_func_t}
\name{cairo-user-font}
\title{User Fonts}
\description{Font support with font data provided by the user}
\section{Methods and Functions}{
\code{\link{cairoUserFontFaceCreate}()}\cr
\code{\link{cairoUserFontFaceSetInitFunc}(font.face, init.func)}\cr
\code{\link{cairoUserFontFaceGetInitFunc}(font.face)}\cr
\code{\link{cairoUserFontFaceSetRenderGlyphFunc}(font.face, render.glyph.func)}\cr
\code{\link{cairoUserFontFaceGetRenderGlyphFunc}(font.face)}\cr
\code{\link{cairoUserFontFaceSetUnicodeToGlyphFunc}(font.face, unicode.to.glyph.func)}\cr
\code{\link{cairoUserFontFaceGetUnicodeToGlyphFunc}(font.face)}\cr
\code{\link{cairoUserFontFaceSetTextToGlyphsFunc}(font.face, text.to.glyphs.func)}\cr
\code{\link{cairoUserFontFaceGetTextToGlyphsFunc}(font.face)}\cr
}
\section{Detailed Description}{The user-font feature allows the cairo user to provide drawings for glyphs
in a font.  This is most useful in implementing fonts in non-standard
formats, like SVG fonts and Flash fonts, but can also be used by games and
other application to draw "funky" fonts.}
\section{User Functions}{\describe{
\item{\code{cairo_user_scaled_font_init_func_t(scaled.font, cr, extents)}}{
\verb{cairo_user_scaled_font_init_func_t} is the type of function which is
called when a scaled-font needs to be created for a user font-face.
  
The cairo context \code{cr} is not used by the caller, but is prepared in font
space, similar to what the cairo contexts passed to the render_glyph
method will look like.  The callback can use this context for extents
computation for example.  After the callback is called, \code{cr} is checked
for any error status.
  
The \code{extents} argument is where the user font sets the font extents for
\code{scaled.font}.  It is in font space, which means that for most cases its
ascent and descent members should add to 1.0.  \code{extents} is preset to
hold a value of 1.0 for ascent, height, and max_x_advance, and 0.0 for
descent and max_y_advance members.
  
The callback is optional.  If not set, default font extents as described
in the previous paragraph will be used.
  
Note that \code{scaled.font} is not fully initialized at this
point and trying to use it for text operations in the callback will result
in deadlock.  
  Since 1.8

\describe{
\item{\code{scaled.font}}{[\code{\link{CairoScaledFont}}]  the scaled-font being created}
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context, in font space}
\item{\code{extents}}{[\code{\link{CairoFontExtents}}]  font extents to fill in, in font space}
}

\emph{Returns:} [\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS} upon success, or
\code{CAIRO_STATUS_USER_FONT_ERROR} or any other error status on error.

}
\item{\code{cairo_user_scaled_font_render_glyph_func_t(scaled.font, glyph, cr, extents)}}{
\verb{cairo_user_scaled_font_render_glyph_func_t} is the type of function which
is called when a user scaled-font needs to render a glyph.
  
The callback is mandatory, and expected to draw the glyph with code \code{glyph} to
the cairo context \code{cr}.  \code{cr} is prepared such that the glyph drawing is done in
font space.  That is, the matrix set on \code{cr} is the scale matrix of \code{scaled.font},
The \code{extents} argument is where the user font sets the font extents for
\code{scaled.font}.  However, if user prefers to draw in user space, they can
achieve that by changing the matrix on \code{cr}.  All cairo rendering operations
to \code{cr} are permitted, however, the result is undefined if any source other
than the default source on \code{cr} is used.  That means, glyph bitmaps should
be rendered using \code{\link{cairoMask}} instead of \code{\link{cairoPaint}}.
  
Other non-default settings on \code{cr} include a font size of 1.0 (given that
it is set up to be in font space), and font options corresponding to
\code{scaled.font}.
  
The \code{extents} argument is preset to have \code{x_bearing},
\code{width}, and \code{y_advance} of zero,
\code{y_bearing} set to \code{-font_extents.ascent},
\code{height} to \code{font_extents.ascent+font_extents.descent},
and \code{x_advance} to \code{font_extents.max_x_advance}.
The only field user needs to set in majority of cases is
\code{x_advance}.
If the \code{width} field is zero upon the callback returning
(which is its preset value), the glyph extents are automatically computed
based on the drawings done to \code{cr}.  This is in most cases exactly what the
desired behavior is.  However, if for any reason the callback sets the
extents, it must be ink extents, and include the extents of all drawing
done to \code{cr} in the callback.  
  Since 1.8

\describe{
\item{\code{scaled.font}}{[\code{\link{CairoScaledFont}}]  user scaled-font}
\item{\code{glyph}}{[unsignedlong]  glyph code to render}
\item{\code{cr}}{[\code{\link{Cairo}}]  cairo context to draw to, in font space}
\item{\code{extents}}{[\code{\link{CairoTextExtents}}]  glyph extents to fill in, in font space}
}

\emph{Returns:} [\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS} upon success, or
\code{CAIRO_STATUS_USER_FONT_ERROR} or any other error status on error.

}
\item{\code{cairo_user_scaled_font_text_to_glyphs_func_t(scaled.font, utf8, utf8.len, glyphs, num.glyphs, clusters, num.clusters, cluster.flags)}}{
\verb{cairo_user_scaled_font_text_to_glyphs_func_t} is the type of function which
is called to convert input text to a list of glyphs.  This is used by the
\code{\link{cairoShowText}} operation.
  
Using this callback the user-font has full control on glyphs and their
positions.  That means, it allows for features like ligatures and kerning,
as well as complex \dfn{shaping} required for scripts like
Arabic and Indic.
  
The \code{num.glyphs} argument is preset to the number of glyph entries available
in the \code{glyphs} buffer. If the \code{glyphs} buffer is \code{NULL}, the value of
\code{num.glyphs} will be zero.  If the provided glyph list is too short for
the conversion (or for convenience), a new glyph list may be allocated
using \code{cairoGlyphAllocate()} and placed in \code{glyphs}.  Upon return,
\code{num.glyphs} should contain the number of generated glyphs.  If the value
\code{glyphs} points at has changed after the call, the caller will free the
allocated glyph list using \code{cairoGlyphFree()}.
The callback should populate the glyph indices and positions (in font space)
assuming that the text is to be shown at the origin.
  
If \code{clusters} is not \code{NULL}, \code{num.clusters} and \code{cluster.flags} are also
non-\code{NULL}, and cluster mapping should be computed. The semantics of how
cluster list allocation works is similar to the glyph list.  That is,
if \code{clusters} initially points to a non-\code{NULL} value, that list may be used
as a cluster buffer, and \code{num.clusters} points to the number of cluster
entries available there.  If the provided cluster list is too short for
the conversion (or for convenience), a new cluster list may be allocated
using \code{cairoTextClusterAllocate()} and placed in \code{clusters}.  Upon return,
\code{num.clusters} should contain the number of generated clusters.
If the value \code{clusters} points at has changed after the call, the caller
will free the allocated cluster list using \code{cairoTextClusterFree()}.
  
The callback is optional.  If \code{num.glyphs} is negative upon
the callback returning, the unicode_to_glyph callback
is tried.  See \verb{cairo_user_scaled_font_unicode_to_glyph_func_t}.
  
Note: While cairo does not impose any limitation on glyph indices,
some applications may assume that a glyph index fits in a 16-bit
unsigned integer.  As such, it is advised that user-fonts keep their
glyphs in the 0 to 65535 range.  Furthermore, some applications may
assume that glyph 0 is a special glyph-not-found glyph.  User-fonts
are advised to use glyph 0 for such purposes and do not use that
glyph value for other purposes.  
  Since 1.8

\describe{
\item{\code{scaled.font}}{[\code{\link{CairoScaledFont}}]  the scaled-font being created}
\item{\code{utf8}}{[char]  a string of text encoded in UTF-8}
\item{\code{utf8.len}}{[integer]  length of \code{utf8} in bytes}
\item{\code{glyphs}}{[\code{\link{CairoGlyph}}]  pointer to list of glyphs to fill, in font space}
\item{\code{num.glyphs}}{[integer]  pointer to number of glyphs}
\item{\code{clusters}}{[\code{\link{CairoTextCluster}}]  pointer to list of cluster mapping information to fill, or \code{NULL}}
\item{\code{num.clusters}}{[integer]  pointer to number of clusters}
\item{\code{cluster.flags}}{[\code{\link{CairoTextClusterFlags}}]  pointer to location to store cluster flags corresponding to the
                output \code{clusters}}
}

\emph{Returns:} [\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS} upon success, or
\code{CAIRO_STATUS_USER_FONT_ERROR} or any other error status on error.

}
\item{\code{cairo_user_scaled_font_unicode_to_glyph_func_t(scaled.font, unicode, glyph.index)}}{
\verb{cairo_user_scaled_font_unicode_to_glyph_func_t} is the type of function which
is called to convert an input Unicode character to a single glyph.
This is used by the \code{\link{cairoShowText}} operation.
  
This callback is used to provide the same functionality as the
text_to_glyphs callback does (see \verb{cairo_user_scaled_font_text_to_glyphs_func_t})
but has much less control on the output,
in exchange for increased ease of use.  The inherent assumption to using
this callback is that each character maps to one glyph, and that the
mapping is context independent.  It also assumes that glyphs are positioned
according to their advance width.  These mean no ligatures, kerning, or
complex scripts can be implemented using this callback.
  
The callback is optional, and only used if text_to_glyphs callback is not
set or fails to return glyphs.  If this callback is not set, an identity
mapping from Unicode code-points to glyph indices is assumed.
  
Note: While cairo does not impose any limitation on glyph indices,
some applications may assume that a glyph index fits in a 16-bit
unsigned integer.  As such, it is advised that user-fonts keep their
glyphs in the 0 to 65535 range.  Furthermore, some applications may
assume that glyph 0 is a special glyph-not-found glyph.  User-fonts
are advised to use glyph 0 for such purposes and do not use that
glyph value for other purposes.  
  Since 1.8

\describe{
\item{\code{scaled.font}}{[\code{\link{CairoScaledFont}}]  the scaled-font being created}
\item{\code{unicode}}{[unsignedlong]  input unicode character code-point}
\item{\code{glyph.index}}{[long]  output glyph index}
}

\emph{Returns:} [\code{\link{CairoStatus}}] \code{CAIRO_STATUS_SUCCESS} upon success, or
\code{CAIRO_STATUS_USER_FONT_ERROR} or any other error status on error.

}
}}
\references{\url{https://www.cairographics.org/manual/cairo-User-Fonts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
