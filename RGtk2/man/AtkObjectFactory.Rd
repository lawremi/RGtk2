\alias{AtkObjectFactory}
\name{AtkObjectFactory}
\title{AtkObjectFactory}
\description{The base object class for a factory used to create accessible objects for 
objects of a specific GType.}
\section{Methods and Functions}{
\code{\link{atkObjectFactoryCreateAccessible}(object, obj)}\cr
\code{\link{atkObjectFactoryGetAccessibleType}(object)}\cr
\code{\link{atkObjectFactoryInvalidate}(object)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----AtkObjectFactory
         +----\link{AtkNoOpObjectFactory}}}
\section{Detailed Description}{This class is the base object class for a factory used to create an 
accessible object for a specific GType. The function 
\code{\link{atkRegistrySetFactoryType}} is normally called to store 
in the registry the factory type to be used to create an accessible of a
particular GType.}
\section{Structures}{\describe{\item{\code{AtkObjectFactory}}{
The AtkObjectFactory structure should not be accessed directly.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkObjectFactory.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
