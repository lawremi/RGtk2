\alias{gdk-GdkRGB}
\alias{GdkRgbCmap}
\alias{GdkRgbDither}
\name{gdk-GdkRGB}
\title{GdkRGB}
\description{Renders RGB, grayscale, or indexed image data to a GdkDrawable}
\section{Methods and Functions}{
\code{\link{gdkDrawRgbImage}(object, gc, x, y, width, height, dith, rgb.buf, rowstride)}\cr
\code{\link{gdkDrawRgbImageDithalign}(object, gc, x, y, width, height, dith, rgb.buf, xdith, ydith)}\cr
\code{\link{gdkDrawIndexedImage}(object, gc, x, y, width, height, dith, buf, cmap)}\cr
\code{\link{gdkDrawGrayImage}(object, gc, x, y, width, height, dith, buf)}\cr
\code{\link{gdkDrawRgb32Image}(object, gc, x, y, width, height, dith, buf)}\cr
\code{\link{gdkDrawRgb32ImageDithalign}(object, gc, x, y, width, height, dith, buf, xdith, ydith)}\cr
\code{\link{gdkRgbCmapNew}(colors)}\cr
\code{\link{gdkRgbGcSetForeground}(gc, rgb)}\cr
\code{\link{gdkRgbGcSetBackground}(gc, rgb)}\cr
\code{\link{gdkRgbXpixelFromRgb}(rgb)}\cr
\code{\link{gdkRgbFindColor}(colormap, color)}\cr
\code{\link{gdkRgbSetInstall}(install)}\cr
\code{\link{gdkRgbSetMinColors}(min.colors)}\cr
\code{\link{gdkRgbGetVisual}()}\cr
\code{\link{gdkRgbGetColormap}()}\cr
\code{\link{gdkRgbDitherable}()}\cr
\code{\link{gdkRgbColormapDitherable}(colormap)}\cr
\code{\link{gdkRgbSetVerbose}(verbose)}\cr
}
\section{Detailed Description}{GdkRGB is a low-level module which renders RGB, grayscale, and indexed
colormap images to a \code{\link{GdkDrawable}}. It does this as efficiently as
possible, handling issues such as colormaps, visuals, dithering,
temporary buffers, and so on. Most code should use the higher-level
\code{\link{GdkPixbuf}} features in place of this module; for example,
\code{\link{gdkDrawPixbuf}} uses GdkRGB in its implementation.
  
GdkRGB allocates a color cube to use when rendering images.  You can
set the threshold for installing colormaps with
\code{\link{gdkRgbSetMinColors}}. The default is 5x5x5 (125). If a colorcube
of this size or larger can be allocated in the default colormap, then
that's done. Otherwise, GdkRGB creates its own private colormap.
Setting it to 0 means that it always tries to use the default
colormap, and setting it to 216 means that it always creates a private
one if it cannot allocate the 6x6x6 colormap in the default. If you
always want a private colormap (to avoid consuming too many colormap
entries for other apps, say), you can use
\code{gdk_rgb_set_install(TRUE)}.
Setting the value greater than 216 exercises a bug in older versions
of GdkRGB. Note, however, that setting it to 0 doesn't let you get
away with ignoring the colormap and visual - a colormap is always
created in grayscale and direct color modes, and the visual is changed
in cases where a "better" visual than the default is available.
  
If GDK is built with the Sun mediaLib library, the GdkRGB functions are
accelerated using mediaLib, which provides hardware acceleration on Intel,
AMD, and Sparc chipsets.  If desired, mediaLib support can be turned off
by setting the GDK_DISABLE_MEDIALIB environment variable.
  
 \emph{A simple example program using GdkRGB}
\preformatted{
# Simple example of using GdkRGB with RGtk2

IMAGE_WIDTH	<- 256
IMAGE_HEIGHT <- 256


rgb_example <- function()
{
  window <- gtkWindow("toplevel", show = F)
  darea <- gtkDrawingArea()
  darea$setSizeRequest(IMAGE_WIDTH, IMAGE_HEIGHT)
  window$add(darea)
  
  # Set up the RGB buffer.
  x <- rep(0:(IMAGE_WIDTH-1), IMAGE_HEIGHT)
  y <- rep(0:(IMAGE_HEIGHT-1), IMAGE_WIDTH, each = T)
  red <- x - x \%% 32
  green <- (x / 32) * 4 + y - y \%% 32
  blue <- y - y \%% 32
  buf <- rbind(red, green, blue)
  
  # connect to expose event
  gSignalConnect(darea, "expose-event", on_darea_expose, buf)
  
  window$showAll()
}


on_darea_expose <- function(widget, event, buf)
{
  gdkDrawRgbImage(widget[["window"]],
                  widget[["style"]][["fgGc"]][[GtkStateType["normal"]+1]],
                  0, 0, IMAGE_WIDTH, IMAGE_HEIGHT, "max", buf, IMAGE_WIDTH * 3)
}
}}
\section{Structures}{\describe{\item{\verb{GdkRgbCmap}}{
A private data structure which maps color indices to actual RGB
colors. This is used only for \code{\link{gdkDrawIndexedImage}}.
\strong{\verb{GdkRgbCmap} is a \link{transparent-type}.}

\describe{
\item{\code{colors}}{The colors, represented as 0xRRGGBB integer values.}
\item{\code{n_colors}}{The number of colors in the cmap.}
}

}}}
\section{Enums and Flags}{\describe{\item{\verb{GdkRgbDither}}{
Selects whether or not GdkRGB applies dithering
to the image on display.
  
Since GdkRGB currently only handles images with 8 bits per component,
dithering on 24 bit per pixel displays is a moot point.

\describe{
\item{\verb{none}}{Never use dithering.}
\item{\verb{normal}}{Use dithering in 8 bits per pixel (and below)
only.}
\item{\verb{max}}{Use dithering in 16 bits per pixel and below.}
}

}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-GdkRGB.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
