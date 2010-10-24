\alias{cairoSelectFontFace}
\name{cairoSelectFontFace}
\title{cairoSelectFontFace}
\description{Note: The \code{\link{cairoSelectFontFace}} function call is part of what
the cairo designers call the "toy" text API. It is convenient for
short demos and simple programs, but it is not expected to be
adequate for serious text-using applications.}
\usage{cairoSelectFontFace(cr, family, slant, weight)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{family}}{[char]  a font family name, encoded in UTF-8}
\item{\verb{slant}}{[\code{\link{CairoFontSlant}}]  the slant for the font}
\item{\verb{weight}}{[\code{\link{CairoFontWeight}}]  the weight for the font}
}
\details{Selects a family and style of font from a simplified description as
a family name, slant and weight. Cairo provides no operation to
list available family names on the system (this is a "toy",
remember), but the standard CSS2 generic family names, ("serif",
"sans-serif", "cursive", "fantasy", "monospace"), are likely to
work as expected.
  
For "real" font selection, see the font-backend-specific
font_face_create functions for the font backend you are using. (For
example, if you are using the freetype-based cairo-ft font backend,
see \code{cairoFtFontFaceCreateForFtFace()} or
\code{cairoFtFontFaceCreateForPattern()}.) The resulting font face
could then be used with \code{\link{cairoScaledFontCreate}} and
\code{\link{cairoSetScaledFont}}.
  
Similarly, when using the "real" font support, you can call
directly into the underlying font system, (such as fontconfig or
freetype), for operations such as listing available fonts, etc.
  
It is expected that most applications will need to use a more
comprehensive font handling and text layout library, (for example,
pango), in conjunction with cairo.
  
If text is drawn without a call to \code{\link{cairoSelectFontFace}}, (nor
\code{\link{cairoSetFontFace}} nor \code{\link{cairoSetScaledFont}}), the default
family is platform-specific, but is essentially "sans-serif".
Default slant is \code{CAIRO_FONT_SLANT_NORMAL}, and default weight is
\code{CAIRO_FONT_WEIGHT_NORMAL}.
  
This function is equivalent to a call to \code{\link{cairoToyFontFaceCreate}}
followed by \code{\link{cairoSetFontFace}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
