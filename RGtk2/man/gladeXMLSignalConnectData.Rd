\alias{gladeXMLSignalConnectData}
\name{gladeXMLSignalConnectData}
\title{gladeXMLSignalConnectData}
\description{In the glade interface descriptions, signal handlers are specified for
widgets by name.  This function allows you to connect a C function to
all signals in the GladeXML file with the given signal handler name.}
\usage{gladeXMLSignalConnectData(object, handlername, func, user.data)}
\arguments{
\item{\code{object}}{[\code{\link{GladeXML}}]  the GladeXML object}
\item{\code{handlername}}{[char]  the signal handler name}
\item{\code{func}}{[GCallback]  the signal handler function}
\item{\code{user.data}}{[R object]  the signal handler data}
}
\details{It differs from glade\_xml\_signal\_connect since it allows you to
specify the data parameter for the signal handler.  It is also a small
demonstration of how to use glade\_xml\_signal\_connect\_full.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
