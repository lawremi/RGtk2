\alias{cairo-Patterns}
\alias{CairoPattern}
\alias{cairoPattern}
\alias{CairoExtend}
\alias{CairoFilter}
\alias{CairoPatternType}
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
\code{\link{cairoPatternGetType}(pattern)}\cr
\code{cairoPattern(red, green, blue, alpha, surface, x0, y0, x1, y1, cx0, cy0, radius0, cx1, cy1, radius1)}
}
\section{Structures}{\describe{\item{\code{CairoPattern}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{cairoPattern} is the result of collapsing the constructors of \code{cairo_pattern_t} (\code{\link{cairoPatternCreateRgb}}, \code{\link{cairoPatternCreateRgba}}, \code{\link{cairoPatternCreateForSurface}}, \code{\link{cairoPatternCreateLinear}}, \code{\link{cairoPatternCreateRadial}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{CairoExtend}}{
\code{\link{CairoExtend}} is used to describe how the area outside
of a pattern will be drawn.
  
New entries may be added in future versions.  

\describe{
\item{\code{none}}{ pixels outside of the source pattern
  are fully transparent}
\item{\code{repeat}}{ the pattern is tiled by repeating}
\item{\code{reflect}}{ the pattern is tiled by reflecting
  at the edges (not implemented for surface patterns currently)}
}

}
\item{\code{CairoFilter}}{
\emph{undocumented
}

\describe{
\item{\code{fast}}{\emph{undocumented
}}
\item{\code{good}}{\emph{undocumented
}}
\item{\code{best}}{\emph{undocumented
}}
\item{\code{nearest}}{\emph{undocumented
}}
\item{\code{bilinear}}{\emph{undocumented
}}
\item{\code{gaussian}}{\emph{undocumented
}}
}

}
\item{\code{CairoPatternType}}{
\code{\link{CairoPatternType}} is used to describe the type of a given pattern.
  
The type of a pattern is determined by the function used to create
it. The \code{\link{cairoPatternCreateRgb}} and \code{\link{cairoPatternCreateRgba}}
functions create SOLID patterns. The remaining
cairo\_pattern\_create functions map to pattern types in obvious
ways.
  
The pattern type can be queried with \code{\link{cairoPatternGetType}}
  
Most cairo\_pattern functions can be called with a pattern of any
type, (though trying to change the extend or filter for a solid
pattern will have no effect). A notable exception is
\code{\link{cairoPatternAddColorStopRgb}} and
\code{\link{cairoPatternAddColorStopRgba}} which must only be called with
gradient patterns (either LINEAR or RADIAL). Otherwise the pattern
will be shutdown and put into an error state.
  
New entries may be added in future versions.  

  Since  1.2

\describe{
\item{\code{solid}}{ The pattern is a solid (uniform)
color. It may be opaque or translucent.}
\item{\code{surface}}{ The pattern is a based on a surface (an image).}
\item{\code{linear}}{ The pattern is a linear gradient.}
\item{\code{radial}}{ The pattern is a radial gradient.}
}

}
}}
\references{\url{http://www.cairographics.org/manual/cairo-Patterns.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
