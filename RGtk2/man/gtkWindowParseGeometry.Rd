\alias{gtkWindowParseGeometry}
\name{gtkWindowParseGeometry}
\title{gtkWindowParseGeometry}
\description{Parses a standard X Window System geometry string - see the
manual page for X (type 'man X') for details on this.
\code{\link{gtkWindowParseGeometry}} does work on all GTK+ ports
including Win32 but is primarily intended for an X environment.}
\usage{gtkWindowParseGeometry(object, geometry)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWindow}}]  a \code{\link{GtkWindow}}}
\item{\code{geometry}}{[character]  geometry string}
}
\details{If either a size or a position can be extracted from the
geometry string, \code{\link{gtkWindowParseGeometry}} returns \code{TRUE}
and calls \code{\link{gtkWindowSetDefaultSize}} and/or \code{\link{gtkWindowMove}}
to resize/move the window.
  
If \code{\link{gtkWindowParseGeometry}} returns \code{TRUE}, it will also
set the \code{GDK_HINT_USER_POS} and/or \code{GDK_HINT_USER_SIZE} hints
indicating to the window manager that the size/position of
the window was user-specified. This causes most window
managers to honor the geometry.
  
Note that for \code{\link{gtkWindowParseGeometry}} to work as expected, it has
to be called when the window has its "final" size, i.e. after calling
\code{\link{gtkWidgetShowAll}} on the contents and \code{\link{gtkWindowSetGeometryHints}}
on the window.
  
\preformatted{  \code{include}   <gtk/gtk.h>
   
static void
fill_with_content (GtkWidget *vbox)
{
  /    * fill with content... *    /
}
   
int
main (int argc, char *argv[])
{
  GtkWidget *window, *vbox;
  GdkGeometry size_hints = {
    100, 50, 0, 0, 100, 50, 10, 10, 0.0, 0.0, GDK_GRAVITY_NORTH_WEST  
  };
   
  gtk_init (&argc, &argv);
  
  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
  vbox = gtk_vbox_new (FALSE, 0);
  
  gtk_container_add (GTK_CONTAINER (window), vbox);
  fill_with_content (vbox);
  gtk_widget_show_all (vbox);
  
  gtk_window_set_geometry_hints (GTK_WINDOW (window),
	  			    window,
				    &size_hints,
				    GDK_HINT_MIN_SIZE | 
				    GDK_HINT_BASE_SIZE | 
				    GDK_HINT_RESIZE_INC);
  
  if (argc > 1)
    {
      if (!gtk_window_parse_geometry (GTK_WINDOW (window), argv[1]))
        fprintf (stderr, "Failed to parse '%s'\n", argv[1]);
    }
   
  gtk_widget_show_all (window);
    \link{gtkMain}  ;
   
  return 0;
}}  }
\value{[logical]  \code{TRUE} if string was parsed successfully}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
