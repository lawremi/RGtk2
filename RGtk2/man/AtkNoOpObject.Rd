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
 \code{\link{AtkComponent}},  \code{\link{AtkAction}},  \code{\link{AtkEditableText}},  \code{\link{AtkImage}},  \code{\link{AtkSelection}},  \code{\link{AtkTable}},  \code{\link{AtkText}},  \code{\link{AtkHypertext}},  \code{\link{AtkValue}} and  \code{\link{AtkDocument}}.}
\section{Detailed Description}{An AtkNoOpObject is an AtkObject which purports to implement all ATK
interfaces. It is the type of AtkObject which is created if an accessible
object is requested for an object type for which no factory type is specified.}
\section{Structures}{\describe{\item{\verb{AtkNoOpObject}}{
The AtkNoOpObject structure should not be accessed directly.

}}}
\section{Convenient Construction}{\code{atkNoOpObject} is the equivalent of \code{\link{atkNoOpObjectNew}}.}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkNoOpObject.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
