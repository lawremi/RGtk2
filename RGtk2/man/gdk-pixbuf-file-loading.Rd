\alias{gdk-pixbuf-file-loading}
\name{gdk-pixbuf-file-loading}
\title{File Loading}
\description{Loading a pixbuf from a file.}
\section{Methods and Functions}{
\code{\link{gdkPixbufNewFromFile}(filename, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufNewFromFileAtSize}(filename, width, height, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufNewFromFileAtScale}(filename, width, height, preserve.aspect.ratio, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufGetFileInfo}(filename)}\cr
}
\section{Detailed Description}{    The \command{gdk-pixbuf} library provides a simple mechanism for loading
    an image from a file in synchronous fashion.  This means that the
    library takes control of the application while the file is being
    loaded; from the user's point of view, the application will block
    until the image is done loading.
    
    This interface can be used by applications in which blocking is
    acceptable while an image is being loaded.  It can also be used to
    load small images in general.  Applications that need progressive
    loading can use the \code{\link{GdkPixbufLoader}} functionality instead.
  }
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk-pixbuf/gdk-pixbuf-file-loading.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GdkPixbufLoader}}}
\keyword{internal}
