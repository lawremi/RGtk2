\alias{gdk-pixbuf-File-Loading}
\name{gdk-pixbuf-File-Loading}
\title{File Loading}
\description{Loading a pixbuf from a file.}
\section{Methods and Functions}{
\code{\link{gdkPixbufNewFromFile}(filename, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufNewFromFileAtSize}(filename, width, height, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufNewFromFileAtScale}(filename, width, height, preserve.aspect.ratio, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufGetFileInfo}(filename)}\cr
\code{\link{gdkPixbufNewFromStream}(stream, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gdkPixbufNewFromStreamAtScale}(stream, width = -1, height = -1, preserve.aspect.ratio = 1, cancellable = NULL, .errwarn = TRUE)}\cr
}
\section{Detailed Description}{The \command{gdk-pixbuf} library provides a simple mechanism for loading
an image from a file in synchronous fashion.  This means that the
library takes control of the application while the file is being
loaded; from the user's point of view, the application will block
until the image is done loading.
  
This interface can be used by applications in which blocking is
acceptable while an image is being loaded.  It can also be used to
load small images in general.  Applications that need progressive
loading can use the \code{\link{GdkPixbufLoader}} functionality instead.}
\references{\url{https://developer-old.gnome.org/gdk-pixbuf/stable/gdk-pixbuf-File-Loading.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
