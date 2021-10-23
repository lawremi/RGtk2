\alias{GtkHSV}
\name{GtkHSV}
\title{GtkHSV}
\description{A 'color wheel' widget}
\section{Methods and Functions}{
\code{\link{gtkHSVNew}()}\cr
\code{\link{gtkHSVSetColor}(object, h, s, v)}\cr
\code{\link{gtkHSVGetColor}(object, h, s, v)}\cr
\code{\link{gtkHSVSetMetrics}(object, size, ring.width)}\cr
\code{\link{gtkHSVGetMetrics}(object, size, ring.width)}\cr
\code{\link{gtkHSVIsAdjusting}(object)}\cr
\code{\link{gtkHSVToRgb}(h, s, r, g, b)}\cr
\code{\link{gtkRgbToHsv}(r, g, h, s, v)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkHSV}}
\section{Interfaces}{GtkHSV implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{\code{\link{GtkHSV}} is the 'color wheel' part of a complete color selector widget.
It allows to select a color by determining its HSV components in an
intuitive way. Moving the selection around the outer ring changes the hue,
and moving the selection point inside the inner triangle changes value and
saturation.}
\section{Structures}{\describe{\item{\verb{GtkHSV}}{
\emph{undocumented
}

}}}
\section{Signals}{\describe{
\item{\code{changed(hsv, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{hsv}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move(hsv, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{hsv}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkHSV.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
