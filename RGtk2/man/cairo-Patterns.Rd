\alias{cairo-Patterns}
\alias{cairo_pattern_t}
\alias{cairo_extend_t}
\alias{cairo_filter_t}
\name{cairo-Patterns}
\title{Patterns}
\description{Gradients and filtered sources}
\section{Methods and Functions}{
\link{cairoPatternAddColorStopRgb}(pattern, offset, red, green, blue)
\link{cairoPatternAddColorStopRgba}(pattern, offset, red, green, blue, alpha)
\link{cairoPatternCreateRgb}(red, green, blue)
\link{cairoPatternCreateRgba}(red, green, blue, alpha)
\link{cairoPatternCreateForSurface}(surface)
\link{cairoPatternCreateLinear}(x0, y0, x1, y1)
\link{cairoPatternCreateRadial}(cx0, cy0, radius0, cx1, cy1, radius1)
\link{cairoPatternStatus}(pattern)
\link{cairoPatternSetExtend}(pattern, extend)
\link{cairoPatternGetExtend}(pattern)
\link{cairoPatternSetFilter}(pattern, filter)
\link{cairoPatternGetFilter}(pattern)
\link{cairoPatternSetMatrix}(pattern, matrix)
\link{cairoPatternGetMatrix}(pattern, matrix)
}
\section{Structures}{\describe{\item{\code{cairo_pattern_t}}{\emph{undocumented
}}}}
\section{Enums and Flags}{\describe{
\item{\code{enum cairo_extend_t}}{


\describe{
\item{\code{CAIRO_EXTEND_NONE (none)}}{\emph{undocumented
}}
\item{\code{CAIRO_EXTEND_REPEAT (repeat)}}{\emph{undocumented
}}
\item{\code{CAIRO_EXTEND_REFLECT (reflect)}}{\emph{undocumented
}}
}

}
\item{\code{enum cairo_filter_t}}{


\describe{
\item{\code{CAIRO_FILTER_FAST (fast)}}{\emph{undocumented
}}
\item{\code{CAIRO_FILTER_GOOD (good)}}{\emph{undocumented
}}
\item{\code{CAIRO_FILTER_BEST (best)}}{\emph{undocumented
}}
\item{\code{CAIRO_FILTER_NEAREST (nearest)}}{\emph{undocumented
}}
\item{\code{CAIRO_FILTER_BILINEAR (bilinear)}}{\emph{undocumented
}}
\item{\code{CAIRO_FILTER_GAUSSIAN (gaussian)}}{\emph{undocumented
}}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/cairo/cairo-Patterns.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
