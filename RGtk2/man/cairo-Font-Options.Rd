\alias{cairo-Font-Options}
\alias{CairoFontOptions}
\alias{cairoFontOptions}
\alias{CairoSubpixelOrder}
\alias{CairoHintStyle}
\alias{CairoHintMetrics}
\name{cairo-Font-Options}
\title{Font Options}
\description{How a font should be rendered}
\section{Methods and Functions}{
\code{\link{cairoFontOptionsCreate}()}\cr
\code{\link{cairoFontOptionsCopy}(original)}\cr
\code{\link{cairoFontOptionsStatus}(options)}\cr
\code{\link{cairoFontOptionsMerge}(options, other)}\cr
\code{\link{cairoFontOptionsEqual}(options, other)}\cr
\code{\link{cairoFontOptionsSetAntialias}(options, antialias)}\cr
\code{\link{cairoFontOptionsGetAntialias}(options)}\cr
\code{\link{cairoFontOptionsSetSubpixelOrder}(options, subpixel.order)}\cr
\code{\link{cairoFontOptionsGetSubpixelOrder}(options)}\cr
\code{\link{cairoFontOptionsSetHintStyle}(options, hint.style)}\cr
\code{\link{cairoFontOptionsGetHintStyle}(options)}\cr
\code{\link{cairoFontOptionsSetHintMetrics}(options, hint.metrics)}\cr
\code{\link{cairoFontOptionsGetHintMetrics}(options)}\cr
\code{cairoFontOptions()}
}
\section{Structures}{\describe{\item{\code{CairoFontOptions}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{cairoFontOptions} is the equivalent of \code{\link{cairoFontOptionsCreate}}.}
\section{Enums and Flags}{\describe{
\item{\code{CairoSubpixelOrder}}{
The subpixel order specifies the order of color elements within
each pixel on the display device when rendering with an
antialiasing mode of \code{CAIRO_ANTIALIAS_SUBPIXEL}.  

\describe{
\item{\code{default}}{ Use the default subpixel order for
  for the target device}
\item{\code{rgb}}{ Subpixel elements are arranged horizontally
  with red at the left}
\item{\code{bgr}}{  Subpixel elements are arranged horizontally
  with blue at the left}
\item{\code{vrgb}}{ Subpixel elements are arranged vertically
  with red at the top}
\item{\code{vbgr}}{ Subpixel elements are arranged vertically
  with blue at the top}
}

}
\item{\code{CairoHintStyle}}{
Specifies the type of hinting to do on font outlines. Hinting
is the process of fitting outlines to the pixel grid in order
to improve the appearance of the result. Since hinting outlines
involves distorting them, it also reduces the faithfulness
to the original outline shapes. Not all of the outline hinting
styles are supported by all font backends.
  
New entries may be added in future versions.  

\describe{
\item{\code{default}}{ Use the default hint style for
  for font backend and target device}
\item{\code{none}}{ Do not hint outlines}
\item{\code{slight}}{ Hint outlines slightly to improve
  contrast while retaining good fidelity to the original
  shapes.}
\item{\code{medium}}{ Hint outlines with medium strength
  giving a compromise between fidelity to the original shapes
  and contrast}
\item{\code{full}}{ Hint outlines to maximize contrast}
}

}
\item{\code{CairoHintMetrics}}{
Specifies whether to hint font metrics; hinting font metrics
means quantizing them so that they are integer values in
device space. Doing this improves the consistency of
letter and line spacing, however it also means that text
will be laid out differently at different zoom factors.  

\describe{
\item{\code{default}}{ Hint metrics in the default
 manner for the font backend and target device}
\item{\code{off}}{ Do not hint font metrics}
\item{\code{on}}{ Hint font metrics}
}

}
}}
\references{\url{http://www.cairographics.org/manual/cairo-Font-Options.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
