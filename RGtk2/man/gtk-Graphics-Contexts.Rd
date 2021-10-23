\alias{gtk-Graphics-Contexts}
\name{gtk-Graphics-Contexts}
\title{Graphics Contexts}
\description{A shared pool of GdkGC objects}
\section{Methods and Functions}{
\code{\link{gtkGcGet}(depth, colormap, values)}\cr
\code{\link{gtkGcRelease}(gc)}\cr
}
\section{Detailed Description}{These functions provide access to a shared pool of \code{\link{GdkGC}} objects.
When a new \code{\link{GdkGC}} is needed, \code{\link{gtkGcGet}} is called with the required depth,
colormap and \code{\link{GdkGCValues}}. If a \code{\link{GdkGC}} with the required properties already
exists then that is returned. If not, a new \code{\link{GdkGC}} is created.
When the \code{\link{GdkGC}} is no longer needed, \code{\link{gtkGcRelease}} should be called.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-Graphics-Contexts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
