\alias{GtkHScrollbar}
\alias{gtkHScrollbar}
\name{GtkHScrollbar}
\title{GtkHScrollbar}
\description{A horizontal scrollbar}
\section{Methods and Functions}{
\code{\link{gtkHScrollbarNew}(adjustment = NULL, show = TRUE)}\cr
\code{gtkHScrollbar(adjustment = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkRange
                           +----GtkScrollbar
                                 +----GtkHScrollbar}}
\section{Interfaces}{GtkHScrollbar implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The \verb{\link{GtkHScrollbar}} widget is a widget arranged horizontally creating a
scrollbar. See \verb{\link{GtkScrollbar}} for details on
scrollbars. \verb{\link{GtkAdjustment}} pointers may be added to handle the
adjustment of the scrollbar or it may be left \code{NULL} in which case one
will be created for you. See \verb{\link{GtkAdjustment}} for details.}
\section{Structures}{\describe{\item{\verb{GtkHScrollbar}}{
The \verb{\link{GtkHScrollbar}} struct contains private data and should be accessed
using the functions below.

}}}
\section{Convenient Construction}{\code{gtkHScrollbar} is the equivalent of \code{\link{gtkHScrollbarNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkHScrollbar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkScrollbar}}
\verb{\link{GtkScrolledWindow}}
}
\keyword{internal}
