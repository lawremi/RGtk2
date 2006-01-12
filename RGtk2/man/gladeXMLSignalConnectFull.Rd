\alias{gladeXMLSignalConnectFull}
\name{gladeXMLSignalConnectFull}
\title{gladeXMLSignalConnectFull}
\description{This function is similar to glade_xml_signal_connect, except that it
allows you to give an arbitrary function that will be used for actually
connecting the signals.  This is mainly useful for writers of interpreted
language bindings, or applications where you need more control over the
signal connection process.}
\usage{gladeXMLSignalConnectFull(object, handler.name, func, user.data)}
\arguments{
\item{\code{object}}{[\code{\link{GladeXML}}]  the GladeXML object.}
\item{\code{handler.name}}{[character]  the name of the signal handler that we want to connect.}
\item{\code{func}}{[\code{\link{GladeXMLConnectFunc}}]  the function to use to connect the signals.}
\item{\code{user.data}}{[R object]  arbitrary data to pass to the connect function.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
