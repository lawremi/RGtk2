\alias{GtkDrawingArea}
\alias{gtkDrawingArea}
\name{GtkDrawingArea}
\title{GtkDrawingArea}
\description{A widget for custom user interface elements}
\section{Methods and Functions}{
\code{\link{gtkDrawingAreaNew}(show = TRUE)}\cr
\code{\link{gtkDrawingAreaSize}(object, width, height)}\cr
\code{gtkDrawingArea(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkDrawingArea
                           +----GtkCurve
                           +----GtkSpinner}}
\section{Interfaces}{GtkDrawingArea implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkDrawingArea}} widget is used for creating custom user interface
elements. It's essentially a blank widget; you can draw on
\code{widget->window}. After creating a drawing area,
the application may want to connect to:
\itemize{
\item     Mouse and button press signals to respond to input from
    the user. (Use \code{\link{gtkWidgetAddEvents}} to enable events
    you wish to receive.)
    
\item     The "realize" signal to take any necessary actions
    when the widget is instantiated on a particular display.
    (Create GDK resources in response to this signal.)
    
\item     The "configure_event" signal to take any necessary actions
    when the widget changes size.
    
\item     The "expose_event" signal to handle redrawing the
    contents of the widget.
    
}
  
The following code portion demonstrates using a drawing
area to display a circle in the normal widget foreground
color.
Note that GDK automatically clears the exposed area
to the background color before sending the expose event, and
that drawing is implicitly clipped to the exposed area.
  
 \emph{Simple   \code{GtkDrawingArea}   usage.}
\preformatted{
expose_event_callback <- function(widget, event, data) {
  gdkDrawArc(widget[["window"]],
             widget[["style"]][["fgGc"]][[widget[["state"]]+1]],
             TRUE, 0, 0, widget[["allocation"]]$width,
             widget[["allocation"]]$height, 0, 64 * 360)
  return(TRUE)
}
[...]
  
drawing_area = gtkDrawingArea()
drawing_area$setSizeRequest(100, 100)
gSignalConnect(drawing_area, "expose_event", expose_event_callback)
}  
Expose events are normally delivered when a drawing area first comes
onscreen, or when it's covered by another window and then uncovered
(exposed). You can also force an expose event by adding to the "damage
region" of the drawing area's window; \code{\link{gtkWidgetQueueDrawArea}} and
\code{\link{gdkWindowInvalidateRect}} are equally good ways to do this. You'll
then get an expose event for the invalid region.
  
The available routines for drawing are documented on the GDK Drawing Primitives page.
See also \code{\link{gdkDrawPixbuf}} for drawing a \code{\link{GdkPixbuf}}.
  
To receive mouse events on a drawing area, you will need to enable
them with \code{\link{gtkWidgetAddEvents}}. To receive keyboard events, you
will need to set the \verb{GTK_CAN_FOCUS} flag on the drawing area, and
should probably draw some user-visible indication that the drawing
area is focused. Use the \code{gtkHasFocus()} function in your expose event
handler to decide whether to draw the focus indicator. See
\code{\link{gtkPaintFocus}} for one way to draw focus.}
\section{Structures}{\describe{\item{\verb{GtkDrawingArea}}{
The \code{\link{GtkDrawingArea}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkDrawingArea} is the equivalent of \code{\link{gtkDrawingAreaNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkDrawingArea.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkImage}}
\code{\link{GdkPixmap}}
\code{\link{GtkImage}}
\code{\link{GdkPixmap}}
\code{\link{GtkImage}}
}
\keyword{internal}
