\alias{AtkRegistry}
\name{AtkRegistry}
\title{AtkRegistry}
\description{An object used to store the GType of the factories used to create an accessible
object for an object of a particular GType.}
\section{Methods and Functions}{
\code{\link{atkRegistrySetFactoryType}(object, type, factory.type)}\cr
\code{\link{atkRegistryGetFactoryType}(object, type)}\cr
\code{\link{atkRegistryGetFactory}(object, type)}\cr
\code{\link{atkGetDefaultRegistry}()}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----AtkRegistry}}
\section{Structures}{\describe{\item{\code{AtkRegistry}}{
The AtkRegistry structure should not be accessed directly.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkRegistry.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
