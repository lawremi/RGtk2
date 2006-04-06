\alias{gladeXMLSignalAutoconnectFull}
\name{gladeXMLSignalAutoconnectFull}
\title{gladeXMLSignalAutoconnectFull}
\description{This function is similar to glade\_xml\_signal\_connect\_full, except that it
will try to connect all signals in the interface, not just a single
named handler.  It can be thought of the interpeted language binding
version of glade\_xml\_signal\_autoconnect, except that it does not
require gmodule to function correctly.}
\usage{gladeXMLSignalAutoconnectFull(object, func, user.data)}
\arguments{
\item{\code{object}}{[\code{\link{GladeXML}}]  the GladeXML object.}
\item{\code{func}}{[\code{\link{GladeXMLConnectFunc}}]  the function used to connect the signals.}
\item{\code{user.data}}{[R object]  arbitrary data that will be passed to the connection function.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
