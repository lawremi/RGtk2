\alias{gio-Extension-Points}
\alias{GIOExtension}
\alias{GIOExtensionPoint}
\name{gio-Extension-Points}
\title{Extension Points}
\description{Extension Points}
\section{Methods and Functions}{
\code{\link{gIoExtensionGetName}(object)}\cr
\code{\link{gIoExtensionGetPriority}(object)}\cr
\code{\link{gIoExtensionGetType}(object)}\cr
\code{\link{gIoExtensionPointGetExtensionByName}(object, name)}\cr
\code{\link{gIoExtensionPointGetExtensions}(object)}\cr
\code{\link{gIoExtensionPointGetRequiredType}(object)}\cr
\code{\link{gIoExtensionPointImplement}(extension.point.name, type, extension.name, priority)}\cr
\code{\link{gIoExtensionPointLookup}(name)}\cr
\code{\link{gIoExtensionPointRegister}(name)}\cr
\code{\link{gIoExtensionPointSetRequiredType}(object, type)}\cr
\code{\link{gIoExtensionRefClass}(object)}\cr
}
\section{Detailed Description}{\code{\link{GIOExtensionPoint}} provides a mechanism for modules to extend the
functionality of the library or application that loaded it in an 
organized fashion.  
  
An extension point is identified by a name, and it may optionally
require that any implementation must by of a certain type (or derived
thereof). Use \code{\link{gIoExtensionPointRegister}} to register an
extension point, and \code{\link{gIoExtensionPointSetRequiredType}} to
set a required type.
  
A module can implement an extension point by specifying the \code{\link{GType}} 
that implements the functionality. Additionally, each implementation
of an extension point has a name, and a priority. Use
\code{\link{gIoExtensionPointImplement}} to implement an extension point.
  \preformatted{
## Register an extension point
ep <- gIoExtensionPointRegister("my-extension-point")
ep$setRequiredType(MY_TYPE_EXAMPLE)
}  \preformatted{
## Implement an extension point
myExampleImplType <- gClass("MyExampleImpl", MY_TYPE_EXAMPLE)
gIoExtensionPointImplement ("my-extension-point",
                            myExampleImplType,
                            "my-example",
                            10);
}  
 It is up to the code that registered the extension point how
 it uses the implementations that have been associated with it.
 Depending on the use case, it may use all implementations, or
 only the one with the highest priority, or pick a specific
 one by name.}
\section{Structures}{\describe{
\item{\verb{GIOExtension}}{
\emph{undocumented
}

}
\item{\verb{GIOExtensionPoint}}{
\emph{undocumented
}

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/gio-Extension-Points.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
