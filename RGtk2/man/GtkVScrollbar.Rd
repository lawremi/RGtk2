\alias{GtkVScrollbar}
\alias{gtkVScrollbar}
\name{GtkVScrollbar}
\title{GtkVScrollbar}
\description{A vertical scrollbar}
\section{Methods and Functions}{
\code{\link{gtkVScrollbarNew}(adjustment = NULL, show = TRUE)}\cr
\code{gtkVScrollbar(adjustment = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkRange
                           +----GtkScrollbar
                                 +----GtkVScrollbar}}
\section{Interfaces}{GtkVScrollbar implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{The \code{\link{GtkVScrollbar}} widget is a widget arranged vertically creating a
scrollbar. See \code{\link{GtkScrollbar}} for details on
scrollbars. \code{\link{GtkAdjustment}} pointers may be added to handle the
adjustment of the scrollbar or it may be left \code{NULL} in which case one
will be created for you. See \code{\link{GtkScrollbar}} for a description of what the
fields in an adjustment represent for a scrollbar.}
\section{Structures}{\describe{\item{\verb{GtkVScrollbar}}{
The \code{\link{GtkVScrollbar}} struct contains private data and should be accessed
using the functions below.

}}}
\section{Convenient Construction}{\code{gtkVScrollbar} is the equivalent of \code{\link{gtkVScrollbarNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkVScrollbar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
