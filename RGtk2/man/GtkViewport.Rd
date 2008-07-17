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
\code{gtkViewport(hadjustment = NULL, vadjustment = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----GtkViewport}}
\section{Interfaces}{GtkViewport implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Structures}{\describe{\item{\code{GtkViewport}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkViewport} is the equivalent of \code{\link{gtkViewportNew}}.}
\section{Signals}{\describe{\item{\code{set-scroll-adjustments(viewport, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{viewport}}{[\code{\link{GtkViewport}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkAdjustment}}] }
\item{\code{arg2}}{[\code{\link{GtkAdjustment}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\code{hadjustment} [\code{\link{GtkAdjustment}} : Read / Write / Construct]}{

The GtkAdjustment that determines the values of the horizontal position for this viewport.

}
\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Determines how the shadowed box around the viewport is drawn.  Default value: GTK\_SHADOW\_IN

}
\item{\code{vadjustment} [\code{\link{GtkAdjustment}} : Read / Write / Construct]}{

The GtkAdjustment that determines the values of the vertical position for this viewport.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkViewport.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
