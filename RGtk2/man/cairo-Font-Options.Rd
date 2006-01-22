\alias{cairo-Font-Options}
\alias{cairo_font_options_t}
\alias{cairo_subpixel_order_t}
\alias{cairo_hint_style_t}
\alias{cairo_hint_metrics_t}
\name{cairo-Font-Options}
\title{Font Options}
\description{How a font should be rendered}
\section{Methods and Functions}{
\link{cairoFontOptionsCreate}()
\link{cairoFontOptionsCopy}(original)
\link{cairoFontOptionsStatus}(options)
\link{cairoFontOptionsMerge}(options, other)
\link{cairoFontOptionsEqual}(options, other)
\link{cairoFontOptionsSetAntialias}(options, antialias)
\link{cairoFontOptionsGetAntialias}(options)
\link{cairoFontOptionsSetSubpixelOrder}(options, subpixel.order)
\link{cairoFontOptionsGetSubpixelOrder}(options)
\link{cairoFontOptionsSetHintStyle}(options, hint.style)
\link{cairoFontOptionsGetHintStyle}(options)
\link{cairoFontOptionsSetHintMetrics}(options, hint.metrics)
\link{cairoFontOptionsGetHintMetrics}(options)
}
\section{Structures}{\describe{\item{\code{cairo_font_options_t}}{\emph{undocumented
}}}}
\section{Enums and Flags}{\describe{
\item{\code{enum cairo_subpixel_order_t}}{
The subpixel order specifies the order of color elements within
each pixel on the display device when rendering with an
antialiasing mode of \code{CAIRO_ANTIALIAS_SUBPIXEL}.  

\describe{
\item{\code{CAIRO_SUBPIXEL_ORDER_DEFAULT (default)}}{ Use the default subpixel order for
  for the target device}
\item{\code{CAIRO_SUBPIXEL_ORDER_RGB (rgb)}}{ Subpixel elements are arranged horizontally
  with red at the left}
\item{\code{CAIRO_SUBPIXEL_ORDER_BGR (bgr)}}{  Subpixel elements are arranged horizontally
  with blue at the left}
\item{\code{CAIRO_SUBPIXEL_ORDER_VRGB (vrgb)}}{ Subpixel elements are arranged vertically
  with red at the top}
\item{\code{CAIRO_SUBPIXEL_ORDER_VBGR (vbgr)}}{ Subpixel elements are arranged vertically
  with blue at the top}
}

}
\item{\code{enum cairo_hint_style_t}}{
Specifies the type of hinting to do on font outlines. Hinting
is the process of fitting outlines to the pixel grid in order
to improve the appearance of the result. Since hinting outlines
involves distorting them, it also reduces the faithfulness
to the original outline shapes. Not all of the outline hinting
styles are supported by all font backends.  

\describe{
\item{\code{CAIRO_HINT_STYLE_DEFAULT (default)}}{ Use the default hint style for
  for font backend and target device}
\item{\code{CAIRO_HINT_STYLE_NONE (none)}}{ Do not hint outlines}
\item{\code{CAIRO_HINT_STYLE_SLIGHT (slight)}}{ Hint outlines slightly to improve
  contrast while retaining good fidelity to the original
  shapes.}
\item{\code{CAIRO_HINT_STYLE_MEDIUM (medium)}}{ Hint outlines with medium strength
  giving a compromise between fidelity to the original shapes
  and contrast}
\item{\code{CAIRO_HINT_STYLE_FULL (full)}}{ Hint outlines to maximize contrast}
}

}
\item{\code{enum cairo_hint_metrics_t}}{
Specifies whether to hint font metrics; hinting font metrics
means quantizing them so that they are integer values in
device space. Doing this improves the consistency of
letter and line spacing, however it also means that text
will be laid out differently at different zoom factors.  

\describe{
\item{\code{CAIRO_HINT_METRICS_DEFAULT (default)}}{ Hint metrics in the default
 manner for the font backend and target device}
\item{\code{CAIRO_HINT_METRICS_OFF (off)}}{ Do not hint font metrics}
\item{\code{CAIRO_HINT_METRICS_ON (on)}}{ Hint font metrics}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/cairo/cairo-Font-Options.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
