\alias{AtkGObjectAccessible}
\name{AtkGObjectAccessible}
\title{AtkGObjectAccessible}
\description{This object class is derived from AtkObject and can be used as a basis
implementing accessible objects.}
\section{Methods and Functions}{
\code{\link{atkGObjectAccessibleForObject}(obj)}\cr
\code{\link{atkGObjectAccessibleGetObject}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----AtkObject
         +----AtkGObjectAccessible}}
\section{Detailed Description}{This object class is derived from AtkObject. It can be used as a basis for
implementing accessible objects for GObjects which are not derived from
GtkWidget. One example of its use is in providing an accessible object
for GnomeCanvasItem in the GAIL library.}
\section{Structures}{\describe{\item{\verb{AtkGObjectAccessible}}{
The AtkGObjectAccessible structure should not be accessed directly.

}}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkGObjectAccessible.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
