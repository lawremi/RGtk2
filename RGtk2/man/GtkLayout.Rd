\alias{GtkLayout}
\alias{gtkLayout}
\name{GtkLayout}
\title{GtkLayout}
\description{Infinite scrollable area containing child widgets and/or custom drawing}
\section{Methods and Functions}{
\code{\link{gtkLayoutNew}(hadjustment = NULL, vadjustment = NULL, show = TRUE)}\cr
\code{\link{gtkLayoutPut}(object, child.widget, x, y)}\cr
\code{\link{gtkLayoutMove}(object, child.widget, x, y)}\cr
\code{\link{gtkLayoutSetSize}(object, width, height)}\cr
\code{\link{gtkLayoutGetSize}(object)}\cr
\code{\link{gtkLayoutFreeze}(object)}\cr
\code{\link{gtkLayoutThaw}(object)}\cr
\code{\link{gtkLayoutGetHadjustment}(object)}\cr
\code{\link{gtkLayoutGetVadjustment}(object)}\cr
\code{\link{gtkLayoutSetHadjustment}(object, adjustment = NULL)}\cr
\code{\link{gtkLayoutSetVadjustment}(object, adjustment = NULL)}\cr
\code{gtkLayout(hadjustment = NULL, vadjustment = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkLayout}}
\section{Interfaces}{GtkLayout implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{\verb{\link{GtkLayout}} is similar to \verb{\link{GtkDrawingArea}} in that it's a "blank slate"
and doesn't do anything but paint a blank background by default. It's
different in that it supports scrolling natively (you can add it to a
\verb{\link{GtkScrolledWindow}}), and it can contain child widgets, since it's a
\verb{\link{GtkContainer}}. However if you're just going to draw, a \verb{\link{GtkDrawingArea}}
is a better choice since it has lower overhead.
  
When handling expose events on a \verb{\link{GtkLayout}}, you must draw to 
GTK_LAYOUT (layout)->bin_window, rather than to 
GTK_WIDGET (layout)->window, as you would for a drawing
area.}
\section{Structures}{\describe{\item{\verb{GtkLayout}}{
\emph{undocumented
}

\describe{\item{\verb{binWindow}}{[\verb{\link{GdkWindow}}] }}

}}}
\section{Convenient Construction}{\code{gtkLayout} is the equivalent of \code{\link{gtkLayoutNew}}.}
\section{Signals}{\describe{\item{\code{set-scroll-adjustments(layout, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{layout}}{[\verb{\link{GtkLayout}}] the object which received the signal.}
\item{\code{arg1}}{[\verb{\link{GtkAdjustment}}] }
\item{\code{arg2}}{[\verb{\link{GtkAdjustment}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{hadjustment} [\verb{\link{GtkAdjustment}} : *        : Read / Write]}{

The GtkAdjustment for the horizontal position.

}
\item{\verb{height} [numeric : Read / Write]}{

The height of the layout.  Allowed values: <= G_MAXINT  Default value: 100

}
\item{\verb{vadjustment} [\verb{\link{GtkAdjustment}} : *        : Read / Write]}{

The GtkAdjustment for the vertical position.

}
\item{\verb{width} [numeric : Read / Write]}{

The width of the layout.  Allowed values: <= G_MAXINT  Default value: 100

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkLayout.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkDrawingArea}}
\verb{\link{GtkScrolledWindow}}
}
\keyword{internal}
