\alias{GtkLayout}
\alias{gtkLayout}
\name{GtkLayout}
\title{GtkLayout}
\description{Infinite scrollable area containing child widgets and/or custom drawing}
\usage{
\link{gtkLayoutNew}(hadjustment = NULL, vadjustment = NULL, show = TRUE)
\link{gtkLayoutPut}(object, child.widget, x, y)
\link{gtkLayoutMove}(object, child.widget, x, y)
\link{gtkLayoutSetSize}(object, width, height)
\link{gtkLayoutGetSize}(object)
\link{gtkLayoutFreeze}(object)
\link{gtkLayoutThaw}(object)
\link{gtkLayoutGetHadjustment}(object)
\link{gtkLayoutGetVadjustment}(object)
\link{gtkLayoutSetHadjustment}(object, adjustment = NULL)
\link{gtkLayoutSetVadjustment}(object, adjustment = NULL)
gtkLayout(hadjustment = NULL, vadjustment = NULL, show = TRUE)
}
\details{\code{\link{GtkLayout}} is similar to \code{\link{GtkDrawingArea}} in that it's a "blank slate"
and doesn't do anything but paint a blank background by default. It's
different in that it supports scrolling natively (you can add it to a
\code{\link{GtkScrolledWindow}}), and it can contain child widgets, since it's a
\code{\link{GtkContainer}}. However if you're just going to draw, a \code{\link{GtkDrawingArea}}
is a better choice since it has lower overhead.
  
When handling expose events on a \code{\link{GtkLayout}}, you must draw to 
GTK_LAYOUT (layout)->bin_window, rather than to 
GTK_WIDGET (layout)->window, as you would for a drawing
area.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----GtkLayout}}
\section{Structures}{\describe{\item{\code{GtkLayout}}{


\describe{\item{\code{binWindow}}{[\code{\link{GdkWindow}}] }}

}}}
\section{Convenient Construction}{\code{gtkLayout} is the equivalent of \code{\link{gtkLayoutNew}}.}
\section{Interfaces}{GtkLayout implements
 AtkImplementorIface.}
\section{Signals}{\describe{\item{\code{set-scroll-adjustments(layout, arg1, arg2, user.data)}}{


\describe{
\item{\code{layout}}{[\code{\link{GtkLayout}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkAdjustment}}] }
\item{\code{arg2}}{[\code{\link{GtkAdjustment}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{hadjustment} [\code{\link{GtkAdjustment}} : Read / Write]}{

The GtkAdjustment for the horizontal position.

}
\item{\code{height} [numeric : Read / Write]}{

The height of the layout.  Allowed values: <= G_MAXINT  Default value: 100

}
\item{\code{vadjustment} [\code{\link{GtkAdjustment}} : Read / Write]}{

The GtkAdjustment for the vertical position.

}
\item{\code{width} [numeric : Read / Write]}{

The width of the layout.  Allowed values: <= G_MAXINT  Default value: 100

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkLayout.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkDrawingArea}}
\code{\link{GtkScrolledWindow}}
}
\keyword{internal}
