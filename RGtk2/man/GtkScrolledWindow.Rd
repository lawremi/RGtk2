\alias{GtkScrolledWindow}
\alias{gtkScrolledWindow}
\name{GtkScrolledWindow}
\title{GtkScrolledWindow}
\description{Adds scrollbars to its child widget}
\section{Methods and Functions}{
\code{\link{gtkScrolledWindowNew}(hadjustment = NULL, vadjustment = NULL, show = TRUE)}\cr
\code{\link{gtkScrolledWindowGetHadjustment}(object)}\cr
\code{\link{gtkScrolledWindowGetVadjustment}(object)}\cr
\code{\link{gtkScrolledWindowGetHscrollbar}(object)}\cr
\code{\link{gtkScrolledWindowGetVscrollbar}(object)}\cr
\code{\link{gtkScrolledWindowSetPolicy}(object, hscrollbar.policy, vscrollbar.policy)}\cr
\code{\link{gtkScrolledWindowAddWithViewport}(object, child)}\cr
\code{\link{gtkScrolledWindowSetPlacement}(object, window.placement)}\cr
\code{\link{gtkScrolledWindowUnsetPlacement}(object)}\cr
\code{\link{gtkScrolledWindowSetShadowType}(object, type)}\cr
\code{\link{gtkScrolledWindowSetHadjustment}(object, hadjustment)}\cr
\code{\link{gtkScrolledWindowSetVadjustment}(object, hadjustment)}\cr
\code{\link{gtkScrolledWindowGetPlacement}(object)}\cr
\code{\link{gtkScrolledWindowGetPolicy}(object)}\cr
\code{\link{gtkScrolledWindowGetShadowType}(object)}\cr
\code{gtkScrolledWindow(hadjustment = NULL, vadjustment = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkScrolledWindow}}
\section{Interfaces}{GtkScrolledWindow implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{\verb{\link{GtkScrolledWindow}} is a \verb{\link{GtkBin}} subclass: it's a container 
the accepts a single child widget. \verb{\link{GtkScrolledWindow}} adds scrollbars
to the child widget and optionally draws a beveled frame around the 
child widget.
  
The scrolled window can work in two ways. Some widgets have native
scrolling support; these widgets have "slots" for \verb{\link{GtkAdjustment}}
objects. 
\strong{PLEASE NOTE:} The scrolled window installs \verb{\link{GtkAdjustment}} objects in
the child window's slots using the set_scroll_adjustments_signal,
found in \verb{\link{GtkWidgetClass}}. (Conceptually, these widgets implement a
"Scrollable" interface; because GTK+ 1.2 lacked interface support in
the object system, this interface is hackily implemented as a signal
in \verb{\link{GtkWidgetClass}}. The GTK+ 2.0 object system would allow a clean
implementation, but it wasn't worth breaking the
API.)
Widgets with native scroll support include \verb{\link{GtkTreeView}}, \verb{\link{GtkTextView}}, 
and \verb{\link{GtkLayout}}.
  
For widgets that lack native scrolling support, the \verb{\link{GtkViewport}}
widget acts as an adaptor class, implementing scrollability for child
widgets that lack their own scrolling capabilities. Use \verb{\link{GtkViewport}}
to scroll child widgets such as \verb{\link{GtkTable}}, \verb{\link{GtkBox}}, and so on.
  
If a widget has native scrolling abilities, it can be added to the
\verb{\link{GtkScrolledWindow}} with \code{\link{gtkContainerAdd}}. If a widget does not, you
must first add the widget to a \verb{\link{GtkViewport}}, then add the \verb{\link{GtkViewport}}
to the scrolled window. The convenience function
\code{\link{gtkScrolledWindowAddWithViewport}} does exactly this, so you can
ignore the presence of the viewport.
  
The position of the scrollbars is controlled by the scroll
adjustments. See \verb{\link{GtkAdjustment}} for the fields in an adjustment - for
\verb{\link{GtkScrollbar}}, used by \verb{\link{GtkScrolledWindow}}, the "value" field
represents the position of the scrollbar, which must be between the
"lower" field and "upper - page_size." The "page_size" field
represents the size of the visible scrollable area. The
"step_increment" and "page_increment" fields are used when the user
asks to step down (using the small stepper arrows) or page down (using
for example the PageDown key).
  
If a \verb{\link{GtkScrolledWindow}} doesn't behave quite as you would like, or
doesn't have exactly the right layout, it's very possible to set up
your own scrolling with \verb{\link{GtkScrollbar}} and for example a \verb{\link{GtkTable}}.}
\section{Structures}{\describe{\item{\verb{GtkScrolledWindow}}{
There are no public fields in the \verb{\link{GtkScrolledWindow}} struct; it should 
only be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkScrolledWindow} is the equivalent of \code{\link{gtkScrolledWindowNew}}.}
\section{Signals}{\describe{
\item{\code{move-focus-out(scrolledwindow, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{scrolledwindow}}{[\verb{\link{GtkScrolledWindow}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDirectionType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{scroll-child(scrolledwindow, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{scrolledwindow}}{[\verb{\link{GtkScrolledWindow}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkScrollType}}] }
\item{\code{arg2}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{hadjustment} [\verb{\link{GtkAdjustment}} : *        : Read / Write / Construct]}{

The GtkAdjustment for the horizontal position.

}
\item{\verb{hscrollbar-policy} [\code{\link{GtkPolicyType}} : Read / Write]}{

When the horizontal scrollbar is displayed.  Default value: GTK_POLICY_ALWAYS

}
\item{\verb{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Style of bevel around the contents.  Default value: GTK_SHADOW_NONE

}
\item{\verb{vadjustment} [\verb{\link{GtkAdjustment}} : *        : Read / Write / Construct]}{

The GtkAdjustment for the vertical position.

}
\item{\verb{vscrollbar-policy} [\code{\link{GtkPolicyType}} : Read / Write]}{

When the vertical scrollbar is displayed.  Default value: GTK_POLICY_ALWAYS

}
\item{\verb{window-placement} [\code{\link{GtkCornerType}} : Read / Write]}{

Where the contents are located with respect to the scrollbars. This property only takes effect if "window-placement-set" is TRUE.  Default value: GTK_CORNER_TOP_LEFT

}
\item{\verb{window-placement-set} [logical : Read / Write]}{

Whether "window-placement" should be used to determine the location 
of the contents with respect to the scrollbars. Otherwise, the 
"gtk-scrolled-window-placement" setting is used.  

  Default value: FALSE  Since  2.10

}
}}
\section{Style Properties}{\describe{
\item{\verb{scrollbar-spacing} [integer : Read]}{

Number of pixels between the scrollbars and the scrolled window.  Allowed values: >= 0  Default value: 3

}
\item{\verb{scrollbars-within-bevel} [logical : Read]}{

Whether to place scrollbars within the scrolled window's bevel.  

  Default value: FALSE  Since  2.12

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkScrolledWindow.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkViewport}}
\verb{\link{GtkAdjustment}}
\verb{\link{GtkWidgetClass}}
}
\keyword{internal}
