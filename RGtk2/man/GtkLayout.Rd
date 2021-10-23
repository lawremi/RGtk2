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
\code{\link{gtkLayoutGetBinWindow}(object)}\cr
\code{gtkLayout(hadjustment = NULL, vadjustment = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkLayout}}
\section{Interfaces}{GtkLayout implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{\code{\link{GtkLayout}} is similar to \code{\link{GtkDrawingArea}} in that it's a "blank slate"
and doesn't do anything but paint a blank background by default. It's
different in that it supports scrolling natively (you can add it to a
\code{\link{GtkScrolledWindow}}), and it can contain child widgets, since it's a
\code{\link{GtkContainer}}. However if you're just going to draw, a \code{\link{GtkDrawingArea}}
is a better choice since it has lower overhead.
  
When handling expose events on a \code{\link{GtkLayout}}, you must draw to
GTK_LAYOUT (layout)->bin_window, rather than to
GTK_WIDGET (layout)->window, as you would for a drawing
area.}
\section{Structures}{\describe{\item{\verb{GtkLayout}}{
\emph{undocumented
}

\describe{\item{\verb{binWindow}}{[\code{\link{GdkWindow}}] }}

}}}
\section{Convenient Construction}{\code{gtkLayout} is the equivalent of \code{\link{gtkLayoutNew}}.}
\section{Signals}{\describe{\item{\code{set-scroll-adjustments(horizontal, vertical, user.data)}}{
Set the scroll adjustments for the layout. Usually scrolled containers
like \code{\link{GtkScrolledWindow}} will emit this signal to connect two instances
of \code{\link{GtkScrollbar}} to the scroll directions of the \code{\link{GtkLayout}}.

\describe{
\item{\code{horizontal}}{the horizontal \code{\link{GtkAdjustment}}}
\item{\code{vertical}}{the vertical \code{\link{GtkAdjustment}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{hadjustment} [\code{\link{GtkAdjustment}} : *        : Read / Write]}{

The GtkAdjustment for the horizontal position.

}
\item{\verb{height} [numeric : Read / Write]}{

The height of the layout.  Allowed values: <= G_MAXINT  Default value: 100

}
\item{\verb{vadjustment} [\code{\link{GtkAdjustment}} : *        : Read / Write]}{

The GtkAdjustment for the vertical position.

}
\item{\verb{width} [numeric : Read / Write]}{

The width of the layout.  Allowed values: <= G_MAXINT  Default value: 100

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkLayout.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkDrawingArea}}
\code{\link{GtkScrolledWindow}}
}
\keyword{internal}
