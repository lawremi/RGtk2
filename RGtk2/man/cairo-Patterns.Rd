\alias{cairo-Patterns}
\alias{CairoPattern}
\alias{cairoPattern}
\alias{CairoExtend}
\alias{CairoFilter}
\name{cairo-Patterns}
\title{Patterns}
\description{Gradients and filtered sources}
\section{Methods and Functions}{
\code{\link{cairoPatternAddColorStopRgb}(pattern, offset, red, green, blue)}\cr
\code{\link{cairoPatternAddColorStopRgba}(pattern, offset, red, green, blue, alpha)}\cr
\code{\link{cairoPatternCreateRgb}(red, green, blue)}\cr
\code{\link{cairoPatternCreateRgba}(red, green, blue, alpha)}\cr
\code{\link{cairoPatternCreateForSurface}(surface)}\cr
\code{\link{cairoPatternCreateLinear}(x0, y0, x1, y1)}\cr
\code{\link{cairoPatternCreateRadial}(cx0, cy0, radius0, cx1, cy1, radius1)}\cr
\code{\link{cairoPatternStatus}(pattern)}\cr
\code{\link{cairoPatternSetExtend}(pattern, extend)}\cr
\code{\link{cairoPatternGetExtend}(pattern)}\cr
\code{\link{cairoPatternSetFilter}(pattern, filter)}\cr
\code{\link{cairoPatternGetFilter}(pattern)}\cr
\code{\link{cairoPatternSetMatrix}(pattern, matrix)}\cr
\code{\link{cairoPatternGetMatrix}(pattern, matrix)}\cr
\code{cairoPattern(red, green, blue, alpha, surface, x0, y0, x1, y1, cx0, cy0, radius0, cx1, cy1, radius1)}
}
\section{Structures}{\describe{\item{\code{CairoPattern}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{cairoPattern} is the result of collapsing the constructors of \code{cairo_pattern_t} (\code{\link{cairoPatternCreateRgb}}, \code{\link{cairoPatternCreateRgba}}, \code{\link{cairoPatternCreateForSurface}}, \code{\link{cairoPatternCreateLinear}}, \code{\link{cairoPatternCreateRadial}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{CairoExtend}}{


\describe{
\item{\code{CAIRO_EXTEND_NONE (none)}}{\emph{undocumented
}}
\item{\code{CAIRO_EXTEND_REPEAT (repeat)}}{\emph{undocumented
}}
\item{\code{CAIRO_EXTEND_REFLECT (reflect)}}{\emph{undocumented
}}
}

}
\item{\code{CairoFilter}}{


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
\references{\url{http://www.cairographics.org/manual/cairo-Patterns.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
