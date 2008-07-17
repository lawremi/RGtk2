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
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----GtkScrolledWindow}}
\section{Interfaces}{GtkScrolledWindow implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{\code{\link{GtkScrolledWindow}} is a \code{\link{GtkBin}} subclass: it's a container 
the accepts a single child widget. \code{\link{GtkScrolledWindow}} adds scrollbars
to the child widget and optionally draws a beveled frame around the 
child widget.
  
The scrolled window can work in two ways. Some widgets have native
scrolling support; these widgets have "slots" for \code{\link{GtkAdjustment}}
objects. 
\strong{PLEASE NOTE:} The scrolled window installs \code{\link{GtkAdjustment}} objects in
the child window's slots using the set\_scroll\_adjustments\_signal,
found in \code{\link{GtkWidgetClass}}. (Conceptually, these widgets implement a
"Scrollable" interface; because GTK+ 1.2 lacked interface support in
the object system, this interface is hackily implemented as a signal
in \code{\link{GtkWidgetClass}}. The GTK+ 2.0 object system would allow a clean
implementation, but it wasn't worth breaking the
API.)
Widgets with native scroll support include \code{\link{GtkTreeView}}, \code{\link{GtkTextView}}, 
and \code{\link{GtkLayout}}.
  
For widgets that lack native scrolling support, the \code{\link{GtkViewport}}
widget acts as an adaptor class, implementing scrollability for child
widgets that lack their own scrolling capabilities. Use \code{\link{GtkViewport}}
to scroll child widgets such as \code{\link{GtkTable}}, \code{\link{GtkBox}}, and so on.
  
If a widget has native scrolling abilities, it can be added to the
\code{\link{GtkScrolledWindow}} with \code{\link{gtkContainerAdd}}. If a widget does not, you
must first add the widget to a \code{\link{GtkViewport}}, then add the \code{\link{GtkViewport}}
to the scrolled window. The convenience function
\code{\link{gtkScrolledWindowAddWithViewport}} does exactly this, so you can
ignore the presence of the viewport.
  
The position of the scrollbars is controlled by the scroll
adjustments. See \code{\link{GtkAdjustment}} for the fields in an adjustment - for
\code{\link{GtkScrollbar}}, used by \code{\link{GtkScrolledWindow}}, the "value" field
represents the position of the scrollbar, which must be between the
"lower" field and "upper - page\_size." The "page\_size" field
represents the size of the visible scrollable area. The
"step\_increment" and "page\_increment" fields are used when the user
asks to step down (using the small stepper arrows) or page down (using
for example the PageDown key).
  
If a \code{\link{GtkScrolledWindow}} doesn't behave quite as you would like, or
doesn't have exactly the right layout, it's very possible to set up
your own scrolling with \code{\link{GtkScrollbar}} and for example a \code{\link{GtkTable}}.}
\section{Structures}{\describe{\item{\code{GtkScrolledWindow}}{
There are no public fields in the \code{\link{GtkScrolledWindow}} struct; it should 
only be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkScrolledWindow} is the equivalent of \code{\link{gtkScrolledWindowNew}}.}
\section{Signals}{\describe{
\item{\code{move-focus-out(scrolledwindow, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{scrolledwindow}}{[\code{\link{GtkScrolledWindow}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDirectionType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{scroll-child(scrolledwindow, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{scrolledwindow}}{[\code{\link{GtkScrolledWindow}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkScrollType}}] }
\item{\code{arg2}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\code{hadjustment} [\code{\link{GtkAdjustment}} : Read / Write / Construct]}{

The GtkAdjustment for the horizontal position.

}
\item{\code{hscrollbar-policy} [\code{\link{GtkPolicyType}} : Read / Write]}{

When the horizontal scrollbar is displayed.  Default value: GTK\_POLICY\_ALWAYS

}
\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Style of bevel around the contents.  Default value: GTK\_SHADOW\_NONE

}
\item{\code{vadjustment} [\code{\link{GtkAdjustment}} : Read / Write / Construct]}{

The GtkAdjustment for the vertical position.

}
\item{\code{vscrollbar-policy} [\code{\link{GtkPolicyType}} : Read / Write]}{

When the vertical scrollbar is displayed.  Default value: GTK\_POLICY\_ALWAYS

}
\item{\code{window-placement} [\code{\link{GtkCornerType}} : Read / Write]}{

Where the contents are located with respect to the scrollbars. This property only takes effect if "window-placement-set" is TRUE.  Default value: GTK\_CORNER\_TOP\_LEFT

}
\item{\code{window-placement-set} [logical : Read / Write]}{

Whether "window-placement" should be used to determine the location 
of the contents with respect to the scrollbars. Otherwise, the 
"gtk-scrolled-window-placement" setting is used.  

  Default value: FALSE  Since  2.10

}
}}
\section{Style Properties}{\describe{
\item{\code{scrollbar-spacing} [integer : Read]}{

Number of pixels between the scrollbars and the scrolled window.  Allowed values: >= 0  Default value: 3

}
\item{\code{scrollbars-within-bevel} [logical : Read]}{

Whether to place scrollbars within the scrolled window's bevel.  

  Default value: FALSE  Since  2.12

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkScrolledWindow.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkViewport}}
\code{\link{GtkAdjustment}}
\code{\link{GtkWidgetClass}}
}
\keyword{internal}
