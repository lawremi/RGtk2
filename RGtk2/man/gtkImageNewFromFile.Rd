\alias{gtkImageNewFromFile}
\name{gtkImageNewFromFile}
\title{gtkImageNewFromFile}
\description{Creates a new \verb{\link{GtkImage}} displaying the file \code{filename}. If the file
isn't found or can't be loaded, the resulting \verb{\link{GtkImage}} will
display a "broken image" icon. This function never returns \code{NULL},
it always returns a valid \verb{\link{GtkImage}} widget.}
\usage{gtkImageNewFromFile(filename, show = TRUE)}
\arguments{\item{\verb{filename}}{[character]  a filename}}
\details{If the file contains an animation, the image will contain an
animation.
  
If you need to detect failures to load the file, use
\code{\link{gdkPixbufNewFromFile}} to load the file yourself, then create
the \verb{\link{GtkImage}} from the pixbuf. (Or for animations, use
\code{\link{gdkPixbufAnimationNewFromFile}}).
  
The storage type (\code{\link{gtkImageGetStorageType}}) of the returned
image is not defined, it will be whatever is appropriate for
displaying the file.  }
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkImage}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
