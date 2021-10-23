\alias{GtkPixmap}
\alias{gtkPixmap}
\name{GtkPixmap}
\title{GtkPixmap}
\description{A widget displaying a graphical image or icon}
\section{Methods and Functions}{
\code{\link{gtkPixmapNew}(pixmap, mask = NULL, show = TRUE)}\cr
\code{\link{gtkPixmapSet}(object, val, mask = NULL)}\cr
\code{\link{gtkPixmapGet}(object)}\cr
\code{\link{gtkPixmapSetBuildInsensitive}(object, build)}\cr
\code{gtkPixmap(pixmap, mask = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkMisc
                           +----GtkPixmap}}
\section{Interfaces}{GtkPixmap implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkPixmap}} widget displays a graphical image or icon.
The icon is typically created using \code{\link{gdkPixmapColormapCreateFromXpm}}
or \code{\link{gdkPixmapColormapCreateFromXpmD}}.
  
The pixels in a \code{\link{GtkPixmap}} cannot be manipulated by the application after
creation, since under the X Window system the pixel data is stored on the
X server and so is not available to the client application.
If you want to create graphical images which can be manipulated by the
application, look at \code{\link{GtkImage}} and \verb{GdkRGB}.
  
GtkPixmap has been deprecated since GTK+ 2.0 and should not be used
in newly written code. Use \code{\link{GtkImage}} instead.}
\section{Structures}{\describe{\item{\verb{GtkPixmap}}{
\strong{WARNING: \code{GtkPixmap} is deprecated and should not be used in newly-written code.}
The \code{\link{GtkPixmap}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkPixmap} is the equivalent of \code{\link{gtkPixmapNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkPixmap.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
