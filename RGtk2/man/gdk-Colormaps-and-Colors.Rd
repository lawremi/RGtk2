\alias{gdk-Colormaps-and-Colors}
\alias{GdkColor}
\alias{GdkColormap}
\alias{gdkColormap}
\name{gdk-Colormaps-and-Colors}
\title{Colormaps and Colors}
\description{Manipulation of colors and colormaps}
\usage{
\link{gdkColormapNew}(visual, allocate)
\link{gdkColormapGetSystem}()
\link{gdkColormapGetSystemSize}()
\link{gdkColormapAllocColors}(colormap, colors, writeable, best.match)
\link{gdkColormapAllocColor}(object, color, writeable, best.match)
\link{gdkColormapFreeColors}(object, colors)
\link{gdkColormapQueryColor}(object, pixel)
\link{gdkColormapGetVisual}(object)
\link{gdkColormapGetScreen}(object)
\link{gdkColorsStore}(object, colors)
\link{gdkColorWhite}(object)
\link{gdkColorBlack}(object)
\link{gdkColorParse}(spec)
\link{gdkColorAlloc}(object, color)
\link{gdkColorChange}(object, color)
gdkColormap(visual, allocate)
}
\details{These functions are used to modify colormaps.
A colormap is an object that contains the mapping
between the color values stored in memory and
the RGB values that are used to display color
values. In general, colormaps only contain
significant information for pseudo-color visuals,
but even for other visual types, a colormap object
is required in some circumstances.
  
There are a couple of special colormaps that can
be retrieved. The system colormap (retrieved 
with \code{\link{gdkColormapGetSystem}}) is the default
colormap of the system. If you are using GdkRGB,
there is another colormap that is important - the
colormap in which GdkRGB works, retrieved with
\code{\link{gdkRgbGetCmap}}. However, when using GdkRGB, 
it is not generally necessary to allocate colors
directly.
  
In previous revisions of this interface, a number
of functions that take a \code{\link{GdkColormap}} parameter
were replaced with functions whose names began
with "gdk_colormap_". This process will probably
be extended somewhat in the future - 
\code{\link{gdkColorWhite}}, \code{\link{gdkColorBlack}}, and 
\code{\link{gdkColorChange}} will probably become aliases.}
\section{Structures}{\describe{
\item{\code{GdkColor}}{
The \code{\link{GdkColor}} structure is used to describe an 
allocated or unallocated color.
\strong{\code{GdkColor} is a \link{transparent-type}.}

\describe{
\item{\code{pixel}}{[numeric] For allocated colors, the value used to
  draw this color on the screen.}
\item{\code{red}}{[integer] The red component of the color. This is
  a value between 0 and 65535, with 65535 indicating
  full intensitiy.}
\item{\code{green}}{[integer] The blue component of the color.}
\item{\code{blue}}{[integer] The green component of the color.}
}

}
\item{\code{GdkColormap}}{
The colormap structure contains the following public fields.

\describe{
\item{\code{size}}{[integer] For pseudo-color colormaps, the number of colors
  in the colormap.}
\item{\code{colors}}{[\code{\link{GdkColor}}] An list containing the current values in the
  colormap. This can be used to map from pixel values
  back to RGB values. This is only meaningful for
  pseudo-color colormaps.}
}

}
}}
\section{Convenient Construction}{\code{gdkColormap} is the equivalent of \code{\link{gdkColormapNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Colormaps-and-Colors.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
