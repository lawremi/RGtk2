\alias{GtkScrolledWindow}
\alias{gtkScrolledWindow}
\name{GtkScrolledWindow}
\title{GtkScrolledWindow}
\description{Adds scrollbars to its child widget}
\usage{
\link{gtkScrolledWindowNew}(hadjustment = NULL, vadjustment = NULL, show = TRUE)
\link{gtkScrolledWindowGetHadjustment}(object)
\link{gtkScrolledWindowGetVadjustment}(object)
\link{gtkScrolledWindowGetHscrollbar}(object)
\link{gtkScrolledWindowGetVscrollbar}(object)
\link{gtkScrolledWindowSetPolicy}(object, hscrollbar.policy, vscrollbar.policy)
\link{gtkScrolledWindowAddWithViewport}(object, child)
\link{gtkScrolledWindowSetPlacement}(object, window.placement)
\link{gtkScrolledWindowSetShadowType}(object, type)
\link{gtkScrolledWindowSetHadjustment}(object, hadjustment)
\link{gtkScrolledWindowSetVadjustment}(object, hadjustment)
\link{gtkScrolledWindowGetPlacement}(object)
\link{gtkScrolledWindowGetPolicy}(object)
\link{gtkScrolledWindowGetShadowType}(object)
gtkScrolledWindow(hadjustment = NULL, vadjustment = NULL, show = TRUE)
}
\details{\code{\link{GtkScrolledWindow}} is a \code{\link{GtkBin}} subclass: it's a container 
the accepts a single child widget. \code{\link{GtkScrolledWindow}} adds scrollbars
to the child widget and optionally draws a beveled frame around the 
child widget.
  
The scrolled window can work in two ways. Some widgets have native
scrolling support; these widgets have "slots" for \code{\link{GtkAdjustment}}
objects. 
\emph{The scrolled window installs \code{\link{GtkAdjustment}} objects in
the child window's slots using the set_scroll_adjustments_signal,
found in \code{\link{GtkWidgetClass}}. (Conceptually, these widgets implement a
"Scrollable" interface; because GTK+ 1.2 lacked interface support in
the object system, this interface is hackily implemented as a signal
in \code{\link{GtkWidgetClass}}. The GTK+ 2.0 object system would allow a clean
implementation, but it wasn't worth breaking the
API.)}
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
"lower" field and "upper - page_size." The "page_size" field
represents the size of the visible scrollable area. The
"step_increment" and "page_increment" fields are used when the user
asks to step down (using the small stepper arrows) or page down (using
for example the PageDown key).
  
If a \code{\link{GtkScrolledWindow}} doesn't behave quite as you would like, or
doesn't have exactly the right layout, it's very possible to set up
your own scrolling with \code{\link{GtkScrollbar}} and for example a \code{\link{GtkTable}}.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----GtkScrolledWindow}}
\section{Structures}{\describe{\item{\code{GtkScrolledWindow}}{
There are no public fields in the \code{\link{GtkScrolledWindow}} struct; it should 
only be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkScrolledWindow} is the equivalent of \code{\link{gtkScrolledWindowNew}}.}
\section{Interfaces}{GtkScrolledWindow implements
 AtkImplementorIface.}
\section{Signals}{\describe{
\item{\code{move-focus-out(scrolledwindow, arg1, user.data)}}{


\describe{
\item{\code{scrolledwindow}}{[\code{\link{GtkScrolledWindow}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDirectionType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{scroll-child(scrolledwindow, arg1, arg2, user.data)}}{


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

When the horizontal scrollbar is displayed.  Default value: GTK_POLICY_ALWAYS

}
\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Style of bevel around the contents.  Default value: GTK_SHADOW_NONE

}
\item{\code{vadjustment} [\code{\link{GtkAdjustment}} : Read / Write / Construct]}{

The GtkAdjustment for the vertical position.

}
\item{\code{vscrollbar-policy} [\code{\link{GtkPolicyType}} : Read / Write]}{

When the vertical scrollbar is displayed.  Default value: GTK_POLICY_ALWAYS

}
\item{\code{window-placement} [\code{\link{GtkCornerType}} : Read / Write]}{

Where the contents are located with respect to the scrollbars.  Default value: GTK_CORNER_TOP_LEFT

}
}}
\section{Style Properties}{\describe{\item{\code{scrollbar-spacing} [integer : Read]}{

Number of pixels between the scrollbars and the scrolled window.  Allowed values: >= 0  Default value: 3

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkScrolledWindow.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkViewport}}
\code{\link{GtkAdjustment}}
\code{\link{GtkWidgetClass}}
}
\keyword{internal}
