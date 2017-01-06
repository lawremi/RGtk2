\alias{cairo-pattern}
\alias{CairoPattern}
\alias{cairoPattern}
\alias{CairoExtend}
\alias{CairoFilter}
\alias{CairoPatternType}
\name{cairo-pattern}
\title{cairo_pattern_t}
\description{Sources for drawing}
\section{Methods and Functions}{
\code{\link{cairoPatternAddColorStopRgb}(pattern, offset, red, green, blue)}\cr
\code{\link{cairoPatternAddColorStopRgba}(pattern, offset, red, green, blue, alpha)}\cr
\code{\link{cairoPatternGetColorStopCount}(pattern)}\cr
\code{\link{cairoPatternGetColorStopRgba}(pattern, index)}\cr
\code{\link{cairoPatternCreateRgb}(red, green, blue)}\cr
\code{\link{cairoPatternCreateRgba}(red, green, blue, alpha)}\cr
\code{\link{cairoPatternGetRgba}(pattern)}\cr
\code{\link{cairoPatternCreateForSurface}(surface)}\cr
\code{\link{cairoPatternGetSurface}(pattern)}\cr
\code{\link{cairoPatternCreateLinear}(x0, y0, x1, y1)}\cr
\code{\link{cairoPatternGetLinearPoints}(pattern)}\cr
\code{\link{cairoPatternCreateRadial}(cx0, cy0, radius0, cx1, cy1, radius1)}\cr
\code{\link{cairoPatternGetRadialCircles}(pattern)}\cr
\code{\link{cairoPatternStatus}(pattern)}\cr
\code{\link{cairoPatternSetExtend}(pattern, extend)}\cr
\code{\link{cairoPatternGetExtend}(pattern)}\cr
\code{\link{cairoPatternSetFilter}(pattern, filter)}\cr
\code{\link{cairoPatternGetFilter}(pattern)}\cr
\code{\link{cairoPatternSetMatrix}(pattern, matrix)}\cr
\code{\link{cairoPatternGetMatrix}(pattern, matrix)}\cr
\code{\link{cairoPatternGetType}(pattern)}\cr
\code{\link{cairoPatternSetUserData}(pattern, key, user.data)}\cr
\code{\link{cairoPatternGetUserData}(pattern, key)}\cr
\code{cairoPattern(red, green, blue, alpha, surface, x0, y0, x1, y1, cx0, cy0, radius0, cx1, cy1, radius1)}
}
\section{Detailed Description}{\code{\link{CairoPattern}} is the paint with which cairo draws.
The primary use of patterns is as the source for all cairo drawing operations,
although they can also be used as masks, that is, as the brush too.
  
A cairo pattern is created by using one of the many constructors,
of the form cairo_pattern_create_\emph{type}()
or implicitly through
cairo_set_source_\emph{type}() functions.}
\section{Structures}{\describe{\item{\verb{CairoPattern}}{
A \code{\link{CairoPattern}} represents a source when drawing onto a
surface. There are different subtypes of \code{\link{CairoPattern}},
for different types of sources; for example,
\code{\link{cairoPatternCreateRgb}} creates a pattern for a solid
opaque color.
  
Other than various cairo_pattern_create_\emph{type}()
functions, some of the pattern types can be implicitly created
using various cairo_set_source_\emph{type}() functions;
for example \code{\link{cairoSetSourceRgb}}.
  
The type of a pattern can be queried with \code{\link{cairoPatternGetType}}.
  
Memory management of \code{\link{CairoPattern}} is done with
\code{cairoPatternReference()} and \code{cairoPatternDestroy()}.  

}}}
\section{Convenient Construction}{\code{cairoPattern} is the result of collapsing the constructors of \code{cairo_pattern_t} (\code{\link{cairoPatternCreateRgb}}, \code{\link{cairoPatternCreateRgba}}, \code{\link{cairoPatternCreateForSurface}}, \code{\link{cairoPatternCreateLinear}}, \code{\link{cairoPatternCreateRadial}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\verb{CairoExtend}}{
\code{\link{CairoExtend}} is used to describe how pattern color/alpha will be
determined for areas "outside" the pattern's natural area, (for
example, outside the surface bounds or outside the gradient
geometry).
  
The default extend mode is \code{CAIRO_EXTEND_NONE} for surface patterns
and \code{CAIRO_EXTEND_PAD} for gradient patterns.
  
New entries may be added in future versions.  

\describe{
\item{\verb{none}}{ pixels outside of the source pattern
  are fully transparent}
\item{\verb{repeat}}{ the pattern is tiled by repeating}
\item{\verb{reflect}}{ the pattern is tiled by reflecting
  at the edges (Implemented for surface patterns since 1.6)}
}

}
\item{\verb{CairoFilter}}{
\code{\link{CairoFilter}} is used to indicate what filtering should be
applied when reading pixel values from patterns. See
\code{cairoPatternSetSource()} for indicating the desired filter to be
used with a particular pattern.  

\describe{
\item{\verb{fast}}{ A high-performance filter, with quality similar
    to \code{CAIRO_FILTER_NEAREST}}
\item{\verb{good}}{ A reasonable-performance filter, with quality
    similar to \code{CAIRO_FILTER_BILINEAR}}
\item{\verb{best}}{ The highest-quality available, performance may
    not be suitable for interactive use.}
\item{\verb{nearest}}{ Nearest-neighbor filtering}
\item{\verb{bilinear}}{ Linear interpolation in two dimensions}
\item{\verb{gaussian}}{ This filter value is currently
    unimplemented, and should not be used in current code.}
}

}
\item{\verb{CairoPatternType}}{
\code{\link{CairoPatternType}} is used to describe the type of a given pattern.
  
The type of a pattern is determined by the function used to create
it. The \code{\link{cairoPatternCreateRgb}} and \code{\link{cairoPatternCreateRgba}}
functions create SOLID patterns. The remaining
cairo_pattern_create functions map to pattern types in obvious
ways.
  
The pattern type can be queried with \code{\link{cairoPatternGetType}}
  
Most \code{\link{CairoPattern}} functions can be called with a pattern of any
type, (though trying to change the extend or filter for a solid
pattern will have no effect). A notable exception is
\code{\link{cairoPatternAddColorStopRgb}} and
\code{\link{cairoPatternAddColorStopRgba}} which must only be called with
gradient patterns (either LINEAR or RADIAL). Otherwise the pattern
will be shutdown and put into an error state.
  
New entries may be added in future versions.  
  Since 1.2

\describe{
\item{\verb{solid}}{ The pattern is a solid (uniform)
color. It may be opaque or translucent.}
\item{\verb{surface}}{ The pattern is a based on a surface (an image).}
\item{\verb{linear}}{ The pattern is a linear gradient.}
\item{\verb{radial}}{ The pattern is a radial gradient.}
}

}
}}
\references{\url{https://www.cairographics.org/manual/cairo-cairo-pattern-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
