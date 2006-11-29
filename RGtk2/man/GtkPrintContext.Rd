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

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkPrintContext}}
\section{Detailed Description}{A GtkPrintContext encapsulates context information that is required when
drawing pages for printing, such as the cairo context and important 
parameters like page size and resolution. It also lets you easily
create \code{\link{PangoLayout}} and \code{\link{PangoContext}} objects that match the font metrics 
of the cairo surface.
  
GtkPrintContext objects gets passed to the ::begin-print, ::end-print, 
::request-page-setup and ::draw-page signals on the \code{\link{GtkPrintOperation}}.
  
\emph{Using GtkPrintContext in a ::draw-page callback}
\preformatted{static void
draw_page (GtkPrintOperation *operation,
	   GtkPrintContext   *context,
	   int                page_nr)
{
  cairo_t *cr;
  PangoLayout *layout;
  PangoFontDescription *desc;
  
  cr = gtk_print_context_get_cairo_context (context);

  /* Draw a red rectangle, as wide as the paper (inside the margins) */
  cairo_set_source_rgb (cr, 1.0, 0, 0);
  cairo_rectangle (cr, 0, 0, gtk_print_context_get_width (context), 50);
  
  cairo_fill (cr);

  /* Draw some lines */
  cairo_move_to (cr, 20, 10);
  cairo_line_to (cr, 40, 20);
  cairo_arc (cr, 60, 60, 20, 0, M_PI);
  cairo_line_to (cr, 80, 20);
  
  cairo_set_source_rgb (cr, 0, 0, 0);
  cairo_set_line_width (cr, 5);
  cairo_set_line_cap (cr, CAIRO_LINE_CAP_ROUND);
  cairo_set_line_join (cr, CAIRO_LINE_JOIN_ROUND);
  
  cairo_stroke (cr);

  /* Draw some text */ 
  layout = gtk_print_context_create_layout (context);
  pango_layout_set_text (layout, "Hello World! Printing is easy", -1);
  desc = pango_font_description_from_string ("sans 28");
  pango_layout_set_font_description (layout, desc);
  pango_font_description_free (desc);

  cairo_move_to (cr, 30, 20);
  pango_cairo_layout_path (cr, layout);

  /* Font Outline */
  cairo_set_source_rgb (cr, 0.93, 1.0, 0.47);
  cairo_set_line_width (cr, 0.5);
  cairo_stroke_preserve (cr);

  /* Font Fill */
  cairo_set_source_rgb (cr, 0, 0.0, 1.0);
  cairo_fill (cr);
  
  g_object_unref (layout);
}
}
  
Printing support was added in GTK+ 2.10.}
\section{Structures}{\describe{\item{\code{GtkPrintContext}}{
\emph{undocumented
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkPrintContext.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
