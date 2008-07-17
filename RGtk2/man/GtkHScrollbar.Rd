\alias{GtkHScrollbar}
\alias{gtkHScrollbar}
\name{GtkHScrollbar}
\title{GtkHScrollbar}
\description{A horizontal scrollbar}
\section{Methods and Functions}{
\code{\link{gtkHScrollbarNew}(adjustment = NULL, show = TRUE)}\cr
\code{gtkHScrollbar(adjustment = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkRange}
                           +----\link{GtkScrollbar}
                                 +----GtkHScrollbar}}
\section{Interfaces}{GtkHScrollbar implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkHScrollbar}} widget is a widget arranged horizontally creating a
scrollbar. See \code{\link{GtkScrollbar}} for details on
scrollbars. \code{\link{GtkAdjustment}} pointers may be added to handle the
adjustment of the scrollbar or it may be left \code{NULL} in which case one
will be created for you. See \code{\link{GtkAdjustment}} for details.}
\section{Structures}{\describe{\item{\code{GtkHScrollbar}}{
The \code{\link{GtkHScrollbar}} struct contains private data and should be accessed
using the functions below.

}}}
\section{Convenient Construction}{\code{gtkHScrollbar} is the equivalent of \code{\link{gtkHScrollbarNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkHScrollbar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkScrollbar}}
\code{\link{GtkScrolledWindow}}
}
\keyword{internal}
