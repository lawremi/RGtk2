\alias{AtkNoOpObject}
\alias{atkNoOpObject}
\name{AtkNoOpObject}
\title{AtkNoOpObject}
\description{An AtkObject which purports to implement all ATK interfaces.}
\usage{atkNoOpObject(obj)}
\section{Methods and Functions}{\link{atkNoOpObjectNew}(obj)}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{AtkObject}
         +----AtkNoOpObject}}
\section{Interfaces}{AtkNoOpObject implements
 \code{\link{AtkAction}},  \code{\link{AtkComponent}},  \code{\link{AtkEditableText}},  \code{\link{AtkHypertext}},  \code{\link{AtkImage}},  \code{\link{AtkSelection}},  \code{\link{AtkTable}},  \code{\link{AtkText}} and  \code{\link{AtkValue}}.}
\section{Detailed Description}{An AtkNoOpObject is an AtkObject which purports to implement all ATK 
interfaces. It is the type of AtkObject which is created if an accessible
object is requested for an object type for which no factory type is specified.}
\section{Structures}{\describe{\item{\code{AtkNoOpObject}}{
The AtkNoOpObject structure should not be accessed directly.

}}}
\section{Convenient Construction}{\code{atkNoOpObject} is the equivalent of \code{\link{atkNoOpObjectNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkNoOpObject.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
