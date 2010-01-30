\alias{gladeXMLSignalConnectData}
\name{gladeXMLSignalConnectData}
\title{gladeXMLSignalConnectData}
\description{In the glade interface descriptions, signal handlers are specified for
widgets by name.  This function allows you to connect a C function to
all signals in the GladeXML file with the given signal handler name.}
\usage{gladeXMLSignalConnectData(object, handlername, func, user.data)}
\arguments{
\item{\verb{object}}{[\verb{\link{GladeXML}}]  the GladeXML object}
\item{\verb{handlername}}{[char]  the signal handler name}
\item{\verb{func}}{[GCallback]  the signal handler function}
\item{\verb{user.data}}{[R object]  the signal handler data}
}
\details{It differs from glade_xml_signal_connect since it allows you to
specify the data parameter for the signal handler.  It is also a small
demonstration of how to use glade_xml_signal_connect_full.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
