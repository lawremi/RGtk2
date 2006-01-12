\alias{pango-Cairo-Rendering}
\alias{PangoCairoFontMap}
\name{pango-Cairo-Rendering}
\title{Cairo Rendering}
\description{Rendering with the Cairo backend}
\usage{
\link{pangoCairoFontMapNew}()
\link{pangoCairoFontMapGetDefault}()
\link{pangoCairoFontMapSetResolution}(object, dpi)
\link{pangoCairoFontMapGetResolution}(object)
\link{pangoCairoFontMapCreateContext}(object)
\link{pangoCairoContextSetResolution}(context, dpi)
\link{pangoCairoContextGetResolution}(context)
\link{pangoCairoContextSetFontOptions}(context, options)
\link{pangoCairoContextGetFontOptions}(context)
\link{pangoCairoUpdateContext}(cr, context)
\link{pangoCairoCreateLayout}(cr)
\link{pangoCairoUpdateLayout}(cr, layout)
\link{pangoCairoShowGlyphString}(cr, font, glyphs)
\link{pangoCairoShowLayoutLine}(cr, line)
\link{pangoCairoShowLayout}(cr, layout)
\link{pangoCairoGlyphStringPath}(cr, font, glyphs)
\link{pangoCairoLayoutLinePath}(cr, line)
\link{pangoCairoLayoutPath}(cr, layout)
}
\details{The Cairo library (\url{http://cairographics.org}) is a
vector graphics library with a powerful rendering model. It has such
features as anti-aliased primitives, alpha-compositing, and
gradients. Multiple backends for Cairo are available, to allow
rendering to images, to PDF files, and to the screen on X and on other
windowing systems. The functions in this section allow using Pango
to render to Cairo surfaces.
  
Using Pango with Cairo is straightforward. A \code{\link{PangoContext}} created
with \code{\link{pangoCairoFontMapCreateContext}} can be used on any
Cairo context (cairo_t), but needs to be updated to match the
current transformation matrix and target surface of the Cairo context
using \code{\link{pangoCairoUpdateContext}}. The convenience functions
\code{\link{pangoCairoCreateLayout}} and \code{\link{pangoCairoUpdateLayout}} handle
the common case where the program doesn't need to manipulate the
properties of the \code{\link{PangoContext}}.
  
When you get the metrics of a layout or of a piece of a layout using
functions such as \code{\link{pangoLayoutGetExtents}}, the reported metrics
are in user-space coordinates. If a piece of text is 10 units long,
and you call cairo_scale (cr, 2.0), it still is more-or-less 10
units long. However, the results will be affected by hinting
(that is, the process of adjusting the text to look good on the
pixel grid), so you shouldn't assume they are completely independent
of the current transformation matrix. Note that the basic metrics
functions in Pango report results in integer Pango units. To get
to the floating point units used in Cairo divide by \code{PANGO_SCALE}.
  \preformatted{
RADIUS <- 150
N.WORDS <- 10
FONT <- "Sans Bold 27"

draw.text <- function(widget, event, data)
{
	width <- widget[["allocation"]][["width"]]
    height <- widget[["allocation"]][["height"]]
  
	device.radius <- min(width, height) / 2.
  
	cr <- gdkCairoCreate(widget[["window"]])
	
	# Center coordinates on the middle of the region we are drawing
	cr$translate(device.radius + (width - 2 * device.radius) / 2,
              device.radius + (height - 2 * device.radius) / 2)
	cr$scale(device.radius / RADIUS, device.radius / RADIUS)
	
	# Create a PangoLayout, set the font and text
	layout <- pangoCairoCreateLayout(cr)
  
	layout$setText("Text")
	desc <- pangoFontDescriptionFromString(FONT)
	layout$setFontDescription(desc)
  
  # Draw the layout N.WORDS times in a circle
  for (i in 1:N.WORDS)
    {
      angle <- (360 * i) / N.WORDS
      
	  cr$save()

      # Gradient from red at angle 60 to blue at angle 300
      red <- (1 + cos((angle - 60) * pi / 180)) / 2
      cr$setSourceRgb(red, 0, 1.0 - red)

      cr$rotate(angle * pi / 180)
    
      # Inform Pango to re-layout the text with the new transformation
      pangoCairoUpdateLayout(cr, layout)
    
      size <- layout$getSize()
      cr$moveTo(- (size$width / .PangoScale) / 2, - RADIUS)
      pangoCairoShowLayout(cr, layout)

      cr$restore()
    }
	return(FALSE)
}

white <- c( 0, "0xffff", "0xffff", "0xffff" )

window <- gtkWindow("toplevel", show = F)
window$setTitle("Rotated Text")
drawing.area <- gtkDrawingArea()
window$add(drawing.area)

# This overrides the background color from the theme
drawing.area$modifyBg("normal", white)

gSignalConnect(drawing.area, "expose-event", draw.text)

window$showAll()
}  
  \emph{Output of   }
  }
\section{Hierarchy}{\preformatted{  GInterface
   +----PangoCairoFontMap}}
\section{Structures}{\describe{\item{\code{PangoCairoFontMap}}{
\code{\link{PangoCairoFontMap}} is an interface exported by font maps for
use with Cairo. The actual type of the font map will depend
on the particular font technology Cairo was compiled to use.  

  Since  1.10

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Cairo-Rendering.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
