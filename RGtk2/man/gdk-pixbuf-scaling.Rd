\alias{gdk-pixbuf-scaling}
\alias{GdkInterpType}
\alias{GdkPixbufRotation}
\name{gdk-pixbuf-scaling}
\title{Scaling}
\description{Scaling pixbufs and scaling and compositing pixbufs}
\section{Methods and Functions}{
\code{\link{gdkPixbufScaleSimple}(object, dest.width, dest.height, interp.type)}\cr
\code{\link{gdkPixbufScale}(object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type)}\cr
\code{\link{gdkPixbufCompositeColorSimple}(object, dest.width, dest.height, interp.type, overall.alpha, check.size, color1, color2)}\cr
\code{\link{gdkPixbufComposite}(object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, overall.alpha)}\cr
\code{\link{gdkPixbufCompositeColor}(object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, overall.alpha, check.x, check.y, check.size, color1, color2)}\cr
\code{\link{gdkPixbufRotateSimple}(object, angle)}\cr
\code{\link{gdkPixbufFlip}(object, horizontal)}\cr
}
\section{Detailed Description}{    The \command{gdk-pixbuf} contains functions to scale pixbufs, to scale
    pixbufs and composite against an existing image, and to scale
    pixbufs and composite against a solid color or checkerboard.
    Compositing a checkerboard is a common way to show an image with
    an alpha channel in image-viewing and editing software.
    
    Since the full-featured functions (\code{\link{gdkPixbufScale}},
    \code{\link{gdkPixbufComposite}}, and \code{\link{gdkPixbufCompositeColor}}) are
    rather complex to use and have many arguments, two simple
    convenience functions are provided, \code{\link{gdkPixbufScaleSimple}} and
    \code{\link{gdkPixbufCompositeColorSimple}} which create a new pixbuf of a
    given size, scale an original image to fit, and then return the
    new pixbuf.
    
   Scaling and compositing functions take advantage of MMX hardware
   acceleration on systems where MMX is supported.  If gdk-pixbuf is built
   with the Sun mediaLib library, these functions are instead accelerated
   using mediaLib, which provides hardware acceleration on Intel, AMD,
   and Sparc chipsets.  If desired, mediaLib support can be turned off by
   setting the GDK_DISABLE_MEDIALIB environment variable.
    
    The following example demonstrates handling an expose event by
    rendering the appropriate area of a source image (which is scaled
    to fit the widget) onto the widget's window.  The source image is
    rendered against a checkerboard, which provides a visual
    representation of the alpha channel if the image has one. If the
    image doesn't have an alpha channel, calling
    \code{\link{gdkPixbufCompositeColor}} function has exactly the same effect
    as calling \code{\link{gdkPixbufScale}}.
    
 \emph{Handling an expose event.}
\preformatted{
expose_cb <- function(widget, event, data)
{
  dest <- gdkPixbuf(color = "rgb", has.alpha = FALSE, bits = 8, 
                    w = event[["area"]]$width, h = event[["area"]]$height)

  area <- event[["area"]]
  pixbuf$compositeColor(dest, 0, 0, area$width, area$height,
                        -area$x, -area$y,
                        widget[["allocation"]]$width / pixbuf$getWidth(),
                        widget[["allocation"]]$height / pixbuf$getHeight(),
                        "bilinear", 255,
                        area$x, area$y, 16, 0xaaaaaa, 0x555555)

  dest$renderToDrawable(widget[["window"]],
                        widget[["style"]][["fgGc"]][[GtkStateType["normal"]+1]],
                        0, 0, area$x, area$y,
                        area$width, area$height,
                        "normal", area$x, area$y)

  return(TRUE)
}
}}
\section{Enums and Flags}{\describe{
\item{\verb{GdkInterpType}}{
    This enumeration describes the different interpolation modes that
    can be used with the scaling functions. \code{GDK.INTERP.NEAREST} is
    the fastest scaling method, but has horrible quality when
    scaling down. \code{GDK.INTERP.BILINEAR} is the best choice if you
    aren't sure what to choose, it has a good speed/quality balance.
    \strong{PLEASE NOTE:} 	Cubic filtering is missing from the list; hyperbolic
	interpolation is just as fast and results in higher quality.
      
  

\describe{
\item{\verb{nearest}}{Nearest neighbor sampling; this is the fastest
and lowest quality mode. Quality is normally unacceptable when scaling
down, but may be OK when scaling up.}
\item{\verb{tiles}}{This is an accurate simulation of the PostScript
image operator without any interpolation enabled.  Each pixel is
rendered as a tiny parallelogram of solid color, the edges of which
are implemented with antialiasing.  It resembles nearest neighbor for
enlargement, and bilinear for reduction.}
\item{\verb{bilinear}}{Best quality/speed balance; use this mode by
default. Bilinear interpolation.  For enlargement, it is
equivalent to point-sampling the ideal bilinear-interpolated image.
For reduction, it is equivalent to laying down small tiles and
integrating over the coverage area.}
\item{\verb{hyper}}{This is the slowest and highest quality
reconstruction function. It is derived from the hyperbolic filters in
Wolberg's "Digital Image Warping", and is formally defined as the
hyperbolic-filter sampling the ideal hyperbolic-filter interpolated
image (the filter is designed to be idempotent for 1:1 pixel mapping).}
}

}
\item{\verb{GdkPixbufRotation}}{
The possible rotations which can be passed to \code{\link{gdkPixbufRotateSimple}}.
To make them easier to use, their numerical values are the actual degrees.

\describe{
\item{\verb{none}}{No rotation.}
\item{\verb{counterclockwise}}{Rotate by 90 degrees.}
\item{\verb{upsidedown}}{Rotate by 180 degrees.}
\item{\verb{clockwise}}{Rotate by 270 degrees.}
}

}
}}
\references{\url{https://developer-old.gnome.org/gdk-pixbuf/stable/gdk-pixbuf-Scaling.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
