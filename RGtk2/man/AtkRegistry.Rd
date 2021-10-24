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
\section{Hierarchy}{\preformatted{GObject
   +----AtkRegistry}}
\section{Detailed Description}{The AtkRegistry is normally used to create appropriate ATK "peers" for user
interface components.  Application developers usually need only interact with
the AtkRegistry by associating appropriate ATK implementation classes with
GObject classes via the atk_registry_set_factory_type call, passing the
appropriate GType for application custom widget classes.}
\section{Structures}{\describe{\item{\verb{AtkRegistry}}{
The AtkRegistry structure should not be accessed directly.

}}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkRegistry.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
