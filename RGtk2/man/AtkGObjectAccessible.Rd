\alias{AtkGObjectAccessible}
\name{AtkGObjectAccessible}
\title{AtkGObjectAccessible}
\description{This object class is derived from AtkObject and can be used as a basis 
implementing accessible objects.}
\section{Methods and Functions}{
\code{\link{atkGObjectAccessibleForObject}(obj)}\cr
\code{\link{atkGObjectAccessibleGetObject}(object)}\cr

}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----\link{AtkObject}
         +----AtkGObjectAccessible}}
\section{Detailed Description}{This object class is derived from AtkObject. It can be used as a basis for
implementing accessible objects for GObjects which are not derived from
GtkWidget. One example of its use is in providing an accessible object
for GnomeCanvasItem in the GAIL library.}
\section{Structures}{\describe{\item{\code{AtkGObjectAccessible}}{
The AtkGObjectAccessible structure should not be accessed directly.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkGObjectAccessible.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
