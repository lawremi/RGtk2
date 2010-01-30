\alias{AtkNoOpObject}
\alias{atkNoOpObject}
\name{AtkNoOpObject}
\title{AtkNoOpObject}
\description{An AtkObject which purports to implement all ATK interfaces.}
\section{Methods and Functions}{
\code{\link{atkNoOpObjectNew}(obj)}\cr
\code{atkNoOpObject(obj)}
}
\section{Hierarchy}{\preformatted{GObject
   +----AtkObject
         +----AtkNoOpObject}}
\section{Interfaces}{AtkNoOpObject implements
 \verb{\link{AtkAction}},  \verb{\link{AtkComponent}},  \verb{\link{AtkDocument}},  \verb{\link{AtkEditableText}},  \verb{\link{AtkHypertext}},  \verb{\link{AtkImage}},  \verb{\link{AtkSelection}},  \verb{\link{AtkTable}},  \verb{\link{AtkText}} and  \verb{\link{AtkValue}}.}
\section{Detailed Description}{An AtkNoOpObject is an AtkObject which purports to implement all ATK 
interfaces. It is the type of AtkObject which is created if an accessible
object is requested for an object type for which no factory type is specified.}
\section{Structures}{\describe{\item{\verb{AtkNoOpObject}}{
The AtkNoOpObject structure should not be accessed directly.

}}}
\section{Convenient Construction}{\code{atkNoOpObject} is the equivalent of \code{\link{atkNoOpObjectNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkNoOpObject.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
