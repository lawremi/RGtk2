\alias{gtkWidgetGetAccessible}
\name{gtkWidgetGetAccessible}
\title{gtkWidgetGetAccessible}
\description{Returns the accessible object that describes the widget to an
assistive technology. }
\usage{gtkWidgetGetAccessible(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}}
\details{If no accessibility library is loaded (i.e. no ATK implementation library is 
loaded via \env{GTK_MODULES} or via another application library, 
such as libgnome), then this \verb{\link{AtkObject}} instance may be a no-op. Likewise, 
if no class-specific \verb{\link{AtkObject}} implementation is available for the widget 
instance in question, it will inherit an \verb{\link{AtkObject}} implementation from the 
first ancestor class for which such an implementation is defined.
  
The documentation of the ATK (\url{http://developer.gnome.org/doc/API/2.0/atk/index.html})
library contains more information about accessible objects and their uses.  }
\value{[\verb{\link{AtkObject}}]  the \verb{\link{AtkObject}} associated with \code{widget}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
