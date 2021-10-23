\alias{GtkViewport}
\alias{gtkViewport}
\name{GtkViewport}
\title{GtkViewport}
\description{An adapter which makes widgets scrollable}
\section{Methods and Functions}{
\code{\link{gtkViewportNew}(hadjustment = NULL, vadjustment = NULL, show = TRUE)}\cr
\code{\link{gtkViewportGetHadjustment}(object)}\cr
\code{\link{gtkViewportGetVadjustment}(object)}\cr
\code{\link{gtkViewportSetHadjustment}(object, adjustment = NULL)}\cr
\code{\link{gtkViewportSetVadjustment}(object, adjustment = NULL)}\cr
\code{\link{gtkViewportSetShadowType}(object, type)}\cr
\code{\link{gtkViewportGetShadowType}(object)}\cr
\code{\link{gtkViewportGetBinWindow}(object)}\cr
\code{gtkViewport(hadjustment = NULL, vadjustment = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkViewport}}
\section{Interfaces}{GtkViewport implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkViewport}} widget acts as an adaptor class, implementing
scrollability for child widgets that lack their own scrolling
capabilities. Use \code{\link{GtkViewport}} to scroll child widgets such as
\code{\link{GtkTable}}, \code{\link{GtkBox}}, and so on.
  
If a widget has native scrolling abilities, such as \code{\link{GtkTextView}},
\code{\link{GtkTreeView}} or \verb{GtkIconview}, it can be added to a \code{\link{GtkScrolledWindow}}
with \code{\link{gtkContainerAdd}}. If a widget does not, you must first add the
widget to a \code{\link{GtkViewport}}, then add the viewport to the scrolled window.
The convenience function \code{\link{gtkScrolledWindowAddWithViewport}} does
exactly this, so you can ignore the presence of the viewport.}
\section{Structures}{\describe{\item{\verb{GtkViewport}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkViewport} is the equivalent of \code{\link{gtkViewportNew}}.}
\section{Signals}{\describe{\item{\code{set-scroll-adjustments(horizontal, vertical, user.data)}}{
Set the scroll adjustments for the viewport. Usually scrolled containers
like \code{\link{GtkScrolledWindow}} will emit this signal to connect two instances
of \code{\link{GtkScrollbar}} to the scroll directions of the \code{\link{GtkViewport}}.

\describe{
\item{\code{horizontal}}{the horizontal \code{\link{GtkAdjustment}}}
\item{\code{vertical}}{the vertical \code{\link{GtkAdjustment}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{hadjustment} [\code{\link{GtkAdjustment}} : *        : Read / Write / Construct]}{

The GtkAdjustment that determines the values of the horizontal position for this viewport.

}
\item{\verb{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Determines how the shadowed box around the viewport is drawn.  Default value: GTK_SHADOW_IN

}
\item{\verb{vadjustment} [\code{\link{GtkAdjustment}} : *        : Read / Write / Construct]}{

The GtkAdjustment that determines the values of the vertical position for this viewport.

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkViewport.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkScrolledWindow}}
\code{\link{GtkAdjustment}}
}
\keyword{internal}
