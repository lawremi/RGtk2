\alias{GtkVScrollbar}
\alias{gtkVScrollbar}
\name{GtkVScrollbar}
\title{GtkVScrollbar}
\description{A vertical scrollbar}
\usage{
\link{gtkVScrollbarNew}(adjustment = NULL, show = TRUE)
gtkVScrollbar(adjustment = NULL, show = TRUE)
}
\details{The \code{\link{GtkVScrollbar}} widget is a widget arranged vertically creating a scrollbar.
See \code{\link{GtkScrollbar}} for details on scrollbars. \code{\link{GtkAdjustment}} pointers may be 
added to handle the adjustment of the scrollbar or it may be left \code{NULL} in which
case one will be created for you. See \code{\link{GtkAdjustment}} for details.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkRange}
                     +----\link{GtkScrollbar}
                           +----GtkVScrollbar}}
\section{Structures}{\describe{\item{\code{GtkVScrollbar}}{
The \code{\link{GtkVScrollbar}} struct contains private data and should be accessed
using the functions below.

}}}
\section{Convenient Construction}{\code{gtkVScrollbar} is the equivalent of \code{\link{gtkVScrollbarNew}}.}
\section{Interfaces}{GtkVScrollbar implements
 AtkImplementorIface.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkVScrollbar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkScrollbar}}
\code{\link{GtkScrolledWindow}}
}
\keyword{internal}
