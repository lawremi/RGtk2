\alias{gtk-Graphics-Contexts}
\name{gtk-Graphics-Contexts}
\title{Graphics Contexts}
\description{A shared pool of GdkGC objects}
\section{Methods and Functions}{
\code{\link{gtkGcGet}(depth, colormap, values)}\cr
\code{\link{gtkGcRelease}(gc)}\cr
}
\section{Detailed Description}{These functions provide access to a shared pool of \verb{\link{GdkGC}} objects.
When a new \verb{\link{GdkGC}} is needed, \code{\link{gtkGcGet}} is called with the required depth,
colormap and \verb{\link{GdkGCValues}}. If a \verb{\link{GdkGC}} with the required properties already
exists then that is returned. If not, a new \verb{\link{GdkGC}} is created.
When the \verb{\link{GdkGC}} is no longer needed, \code{\link{gtkGcRelease}} should be called.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Graphics-Contexts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
