\alias{AtkNoOpObjectFactory}
\alias{atkNoOpObjectFactory}
\name{AtkNoOpObjectFactory}
\title{AtkNoOpObjectFactory}
\description{The AtkObjectFactory which creates an AtkNoOpObject.}
\usage{
\link{atkNoOpObjectFactoryNew}()
atkNoOpObjectFactory()
}
\details{The AtkObjectFactory which creates an AtkNoOpObject. An instance of this is
created by an AtkRegistry if no factory type has not been specified to
create an accessible object of a particular type.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{AtkObjectFactory}
         +----AtkNoOpObjectFactory}}
\section{Structures}{\describe{\item{\code{AtkNoOpObjectFactory}}{
The AtkNoOpObjectFactory structure should not be accessed directly.

}}}
\section{Convenient Construction}{\code{atkNoOpObjectFactory} is the equivalent of \code{\link{atkNoOpObjectFactoryNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkNoOpObjectFactory.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
