\alias{GtkPixmap}
\alias{gtkPixmap}
\name{GtkPixmap}
\title{GtkPixmap}
\description{A widget displaying a graphical image or icon}
\usage{gtkPixmap(pixmap, mask = NULL, show = TRUE)}
\section{Methods and Functions}{
\link{gtkPixmapNew}(pixmap, mask = NULL, show = TRUE)
\link{gtkPixmapSet}(object, val, mask = NULL)
\link{gtkPixmapGet}(object)
\link{gtkPixmapSetBuildInsensitive}(object, build)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkMisc}
                     +----GtkPixmap}}
\section{Interfaces}{GtkPixmap implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkPixmap}} widget displays a graphical image or icon.
The icon is typically created using \code{\link{gdkPixmapColormapCreateFromXpm}}
or \code{\link{gdkPixmapColormapCreateFromXpmD}}.
  
The pixels in a \code{\link{GtkPixmap}} cannot be manipulated by the application after
creation, since under the X Window system the pixel data is stored on the
X server and so is not available to the client application.
If you want to create graphical images which can be manipulated by the
application, look at \code{\link{GtkImage}} and \code{GdkRGB}.
  
GtkPixmap has been deprecated since GTK+ 2.0 and should not be used
in newly written code. Use \code{\link{GtkImage}} instead.}
\section{Structures}{\describe{\item{\code{GtkPixmap}}{
\strong{WARNING: \code{GtkPixmap} is deprecated and should not be used in newly-written code.  
The \code{\link{GtkPixmap}} struct contains private data only, and
should be accessed using the functions below.}
The \code{\link{GtkPixmap}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkPixmap} is the equivalent of \code{\link{gtkPixmapNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkPixmap.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
