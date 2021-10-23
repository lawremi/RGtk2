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
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{The \code{\link{GtkHScrollbar}} widget is a widget arranged horizontally creating a
scrollbar. See \code{\link{GtkScrollbar}} for details on
scrollbars. \code{\link{GtkAdjustment}} pointers may be added to handle the
adjustment of the scrollbar or it may be left \code{NULL} in which case one
will be created for you. See \code{\link{GtkScrollbar}} for a description of what the
fields in an adjustment represent for a scrollbar.}
\section{Structures}{\describe{\item{\verb{GtkHScrollbar}}{
The \code{\link{GtkHScrollbar}} struct contains private data and should be accessed
using the functions below.

}}}
\section{Convenient Construction}{\code{gtkHScrollbar} is the equivalent of \code{\link{gtkHScrollbarNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkHScrollbar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkScrollbar}}
\code{\link{GtkScrolledWindow}}
}
\keyword{internal}
