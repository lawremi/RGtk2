\alias{AtkNoOpObjectFactory}
\alias{atkNoOpObjectFactory}
\name{AtkNoOpObjectFactory}
\title{AtkNoOpObjectFactory}
\description{The AtkObjectFactory which creates an AtkNoOpObject.}
\section{Methods and Functions}{
\code{\link{atkNoOpObjectFactoryNew}()}\cr
\code{atkNoOpObjectFactory()}
}
\section{Hierarchy}{\preformatted{GObject
   +----AtkObjectFactory
         +----AtkNoOpObjectFactory}}
\section{Detailed Description}{The AtkObjectFactory which creates an AtkNoOpObject. An instance of this is
created by an AtkRegistry if no factory type has not been specified to
create an accessible object of a particular type.}
\section{Structures}{\describe{\item{\verb{AtkNoOpObjectFactory}}{
The AtkNoOpObjectFactory structure should not be accessed directly.

}}}
\section{Convenient Construction}{\code{atkNoOpObjectFactory} is the equivalent of \code{\link{atkNoOpObjectFactoryNew}}.}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkNoOpObjectFactory.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
