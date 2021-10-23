\alias{GtkPrintContext}
\name{GtkPrintContext}
\title{GtkPrintContext}
\description{Encapsulates context for drawing pages}
\section{Methods and Functions}{
\code{\link{gtkPrintContextGetCairoContext}(object)}\cr
\code{\link{gtkPrintContextSetCairoContext}(object, cr, dpi.x, dpi.y)}\cr
\code{\link{gtkPrintContextGetPageSetup}(object)}\cr
\code{\link{gtkPrintContextGetWidth}(object)}\cr
\code{\link{gtkPrintContextGetHeight}(object)}\cr
\code{\link{gtkPrintContextGetDpiX}(object)}\cr
\code{\link{gtkPrintContextGetDpiY}(object)}\cr
\code{\link{gtkPrintContextGetPangoFontmap}(object)}\cr
\code{\link{gtkPrintContextCreatePangoContext}(object)}\cr
\code{\link{gtkPrintContextCreatePangoLayout}(object)}\cr
\code{\link{gtkPrintContextGetHardMargins}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GtkPrintContext}}
\section{Detailed Description}{A GtkPrintContext encapsulates context information that is required when
drawing pages for printing, such as the cairo context and important
parameters like page size and resolution. It also lets you easily
create \code{\link{PangoLayout}} and \code{\link{PangoContext}} objects that match the font metrics
of the cairo surface.
  
GtkPrintContext objects gets passed to the ::begin-print, ::end-print,
::request-page-setup and ::draw-page signals on the \code{\link{GtkPrintOperation}}.
  
 \emph{Using GtkPrintContext in a ::draw-page callback}
\preformatted{
draw_page <- function(operation, context, page_nr)
{
  cr <- context$getCairoContext()

  # Draw a red rectangle, as wide as the paper (inside the margins)
  cr$setSourceRgb(1.0, 0, 0)
  cr$rectangle(0, 0, context$getWidth(), 50)
  
  cr$fill()

  # Draw some lines
  cr$moveTo(20, 10)
  cr$lineTo(40, 20)
  cr$arc(60, 60, 20, 0, pi)
  cr$lineTo(80, 20)
  
  cr$setSourceRgb(0, 0, 0)
  cr$setLineWidth(5)
  cr$setLineCap("round")
  cr$setLineJoin("round")
  
  cr$stroke()

  # Draw some text
  
  layout <- context$createLayout()
  layout$setText("Hello World! Printing is easy")
  desc <- pangoFontDescriptionFromString("sans 28")
  layout$setFontDescription(desc)
  
  cr$moveTo(30, 20)
  cr$layoutPath(layout)

  # Font Outline
  cr$setSourceRgb(0.93, 1.0, 0.47)
  cr$setLineWidth(0.5)
  cr$strokePreserve()

  # Font Fill
  cr$setSourceRgb(0, 0.0, 1.0)
  cr$fill()
}
}  
Printing support was added in GTK+ 2.10.}
\section{Structures}{\describe{\item{\verb{GtkPrintContext}}{
\emph{undocumented
}

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkPrintContext.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
