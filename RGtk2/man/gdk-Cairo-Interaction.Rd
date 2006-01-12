\alias{gdk-Cairo-Interaction}
\name{gdk-Cairo-Interaction}
\title{Cairo Interaction}
\description{Functions to support using Cairo}
\usage{
\link{gdkCairoCreate}(drawable)
\link{gdkCairoSetSourceColor}(cr, color)
\link{gdkCairoSetSourcePixbuf}(cr, pixbuf, pixbuf.x, pixbuf.y)
\link{gdkCairoRectangle}(cr, rectangle)
\link{gdkCairoRegion}(cr, region)
}
\details{Cairo (\url{http://cairographics.org}) is a graphics 
library that supports vector graphics and image compositing that
can be used with GDK. Since 2.8, GTK+ does most of its drawing
using Cairo. 
  
GDK does not wrap the Cairo API, instead it allows to create Cairo 
contexts which can be used to draw on GDK drawables. Additional
functions allow to convert GDK's rectangles and regions into
Cairo paths and to use pixbufs as sources for drawing operations.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Cairo-Interaction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
