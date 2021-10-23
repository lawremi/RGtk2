\alias{gdk-Pango-Interaction}
\alias{GdkPangoRenderer}
\alias{GdkPangoAttrEmbossed}
\alias{GdkPangoAttrStipple}
\alias{gdkPangoRenderer}
\name{gdk-Pango-Interaction}
\title{Pango Interaction}
\description{Using Pango in GDK}
\section{Methods and Functions}{
\code{\link{gdkPangoRendererNew}(screen)}\cr
\code{\link{gdkPangoRendererGetDefault}(screen)}\cr
\code{\link{gdkPangoRendererSetDrawable}(object, drawable = NULL)}\cr
\code{\link{gdkPangoRendererSetGc}(object, gc = NULL)}\cr
\code{\link{gdkPangoRendererSetStipple}(object, part, stipple)}\cr
\code{\link{gdkPangoRendererSetOverrideColor}(object, part, color = NULL)}\cr
\code{\link{gdkPangoContextGet}()}\cr
\code{\link{gdkPangoContextGetForScreen}(screen)}\cr
\code{\link{gdkPangoContextSetColormap}(context, colormap)}\cr
\code{\link{gdkPangoAttrEmbossColorNew}(color)}\cr
\code{\link{gdkPangoAttrEmbossedNew}(embossed)}\cr
\code{\link{gdkPangoAttrStippleNew}(stipple)}\cr
\code{\link{gdkPangoLayoutGetClipRegion}(layout, x.origin, index.ranges)}\cr
\code{\link{gdkPangoLayoutLineGetClipRegion}(line, x.origin, index.ranges)}\cr
\code{gdkPangoRenderer(screen)}
}
\section{Hierarchy}{\preformatted{GObject
   +----PangoRenderer
         +----GdkPangoRenderer}}
\section{Detailed Description}{Pango is the text layout system used by GDK and GTK+. The functions
and types in this section are used to render Pango objects to GDK.
drawables, and also extend the set of Pango attributes to include
stippling and embossing.
  
Creating a \code{\link{PangoLayout}} object is the first step in rendering text,
and requires getting a handle to a \code{\link{PangoContext}}. For GTK+ programs,
you'll usually want to use \code{\link{gtkWidgetGetPangoContext}}, or
\code{\link{gtkWidgetCreatePangoLayout}}, rather than using the lowlevel
\code{\link{gdkPangoContextGetForScreen}}. Once you have a \code{\link{PangoLayout}}, you
can set the text and attributes of it with Pango functions like
\code{\link{pangoLayoutSetText}} and get its size with \code{\link{pangoLayoutGetSize}}.
(Note that Pango uses a fixed point system internally, so converting
between Pango units and pixels using PANGO_SCALE or the \code{pangoPixels()} function.)
  
Rendering a Pango layout is done most simply with \code{\link{gdkDrawLayout}};
you can also draw pieces of the layout with \code{\link{gdkDrawLayout}} or
\code{\link{gdkDrawGlyphs}}. \code{\link{GdkPangoRenderer}} is a subclass of \code{\link{PangoRenderer}}
that is used internally to implement these functions. Using it
directly or subclassing it can be useful in some cases. See the
\code{\link{GdkPangoRenderer}} documentation for details.
  
 \emph{Using   \code{\link{GdkPangoRenderer}}   to draw transformed text}
\preformatted{
window <- NULL

RADIUS <- 150
N.WORDS <- 10
FONT <- "Sans Bold 27"

rotated.text.expose.event <- function(widget, event, data)
{

  ## matrix describing font transformation, initialize to identity
  matrix <- pangoMatrixInit()
  
  width <- widget[["allocation"]][["width"]]
  height <- widget[["allocation"]][["height"]]

  ## Get the default renderer for the screen, and set it up for drawing
  renderer <- gdkPangoRendererGetDefault(widget$getScreen())
  renderer$setDrawable(widget[["window"]])
  renderer$setGc(widget[["style"]][["blackGc"]])

  ## Set up a transformation matrix so that the user space coordinates for
  ## the centered square where we draw are [-RADIUS, RADIUS], [-RADIUS, RADIUS]
  ## We first center, then change the scale
  device.radius <- min(width, height) / 2.
  matrix$translate(device.radius + (width - 2 * device.radius) / 2,
                   device.radius + (height - 2 * device.radius) / 2)
  matrix$scale(device.radius / RADIUS, device.radius / RADIUS)

  ## Create a PangoLayout, set the font and text
  context <- widget$createPangoContext()
  layout <- pangoLayoutNew(context)
  layout$setText("Text")
  desc <- pangoFontDescriptionFromString(FONT)
  layout$setFontDescription(desc)

  # Draw the layout N.WORDS times in a circle
  for (i in 1:N.WORDS) {
    rotated.matrix <- matrix$copy()
    angle <- (360 * i) / N.WORDS
    
    color <- list()
    ## Gradient from red at angle 60 to blue at angle 300
    color$red <- 65535 * (1 + cos((angle - 60) * pi / 180)) / 2
    color$green <- 0
    color$blue <- 65535 - color$red
    
    renderer$setOverrideColor("foreground", color)
    
    rotated.matrix$rotate(angle)
    
    context$setMatrix(rotated.matrix)
    
    ## Inform Pango to re-layout the text with the new transformation matrix
    layout$contextChanged()
    
    size <- layout$getSize()
    renderer$drawLayout(layout, - size$width / 2, - RADIUS * 1024)
  }
  
  ## Clean up default renderer, since it is shared
  renderer$setOverrideColor("foreground", NULL)
  renderer$setDrawable(NULL)
  renderer$setGc(NULL)

  return(FALSE)
}


white <- c( 0, "0xffff", "0xffff", "0xffff" )

window <- gtkWindowNew("toplevel")
window$setTitle("Rotated Text")
drawing.area <- gtkDrawingAreaNew()
window$add(drawing.area)

# This overrides the background color from the theme
drawing.area$modifyBg("normal", white)

gSignalConnect(drawing.area, "expose-event", rotated.text.expose.event)

window$setDefaultSize(2 * RADIUS, 2 * RADIUS)

window$showAll()
}  }
\section{Structures}{\describe{
\item{\verb{GdkPangoRenderer}}{
\code{\link{GdkPangoRenderer}} is a subclass of \code{\link{PangoRenderer}} used for rendering
Pango objects into GDK drawables. The default renderer for a particular
screen is obtained with \code{\link{gdkPangoRendererGetDefault}}; Pango
functions like \code{\link{pangoRendererDrawLayout}} and
\code{\link{pangoRendererDrawLayoutLine}} are then used to draw objects with
the renderer.
  
In most simple cases, applications can just use \code{\link{gdkDrawLayout}}, and
don't need to directly use \code{\link{GdkPangoRenderer}} at all. Using the
\code{\link{GdkPangoRenderer}} directly is most useful when working with a
transformation such as a rotation, because the Pango drawing functions
take user space coordinates (coordinates before the transformation)
instead of device coordinates.
  
In certain cases it can be useful to subclass \code{\link{GdkPangoRenderer}}. Examples
of reasons to do this are to add handling of custom attributes by
overriding 'prepare_run' or to do custom drawing of embedded objects
by overriding 'draw_shape'.
  Since 2.6

}
\item{\verb{GdkPangoAttrEmbossed}}{
A Pango text attribute containing a embossed bitmap to be used when
rendering the text.

\describe{\item{\verb{embossed}}{[logical] the \code{\link{PangoAttribute}}.}}

}
\item{\verb{GdkPangoAttrStipple}}{
A Pango text attribute containing a stipple bitmap to be used when
rendering the text.

\describe{\item{\verb{stipple}}{[\code{\link{GdkBitmap}}] the \code{\link{PangoAttribute}}.}}

}
}}
\section{Convenient Construction}{\code{gdkPangoRenderer} is the equivalent of \code{\link{gdkPangoRendererNew}}.}
\section{Properties}{\describe{\item{\verb{screen} [\code{\link{GdkScreen}} : *            : Read / Write / Construct Only]}{

the GdkScreen for the renderer.

}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Pango-Interaction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
