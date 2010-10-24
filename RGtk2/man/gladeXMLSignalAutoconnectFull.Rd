\alias{gladeXMLSignalAutoconnectFull}
\name{gladeXMLSignalAutoconnectFull}
\title{gladeXMLSignalAutoconnectFull}
\description{This function is similar to glade_xml_signal_connect_full, except that it
will try to connect all signals in the interface, not just a single
named handler.  It can be thought of the interpeted language binding
version of glade_xml_signal_autoconnect, except that it does not
require gmodule to function correctly.}
\usage{gladeXMLSignalAutoconnectFull(object, func, user.data)}
\arguments{
\item{\verb{object}}{[\code{\link{GladeXML}}]  the GladeXML object.}
\item{\verb{func}}{[\code{\link{GladeXMLConnectFunc}}]  the function used to connect the signals.}
\item{\verb{user.data}}{[R object]  arbitrary data that will be passed to the connection function.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
