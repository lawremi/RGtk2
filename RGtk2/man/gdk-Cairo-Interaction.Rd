\alias{gdk-Cairo-Interaction}
\name{gdk-Cairo-Interaction}
\title{Cairo Interaction}
\description{Functions to support using Cairo}
\section{Methods and Functions}{
\code{\link{gdkCairoCreate}(drawable)}\cr
\code{\link{gdkCairoSetSourceColor}(cr, color)}\cr
\code{\link{gdkCairoSetSourcePixbuf}(cr, pixbuf, pixbuf.x, pixbuf.y)}\cr
\code{\link{gdkCairoSetSourcePixmap}(cr, pixmap, pixmap.x, pixmap.y)}\cr
\code{\link{gdkCairoRectangle}(cr, rectangle)}\cr
\code{\link{gdkCairoRegion}(cr, region)}\cr
\code{\link{gdkCairoResetClip}(cr, drawable)}\cr
}
\section{Detailed Description}{Cairo (\url{https://cairographics.org}) is a graphics
library that supports vector graphics and image compositing that
can be used with GDK. Since 2.8, GTK+ does most of its drawing
using Cairo.
  
GDK does not wrap the Cairo API, instead it allows to create Cairo
contexts which can be used to draw on GDK drawables. Additional
functions allow to convert GDK's rectangles and regions into
Cairo paths and to use pixbufs as sources for drawing operations.}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Cairo-Interaction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
