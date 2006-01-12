\alias{gladeXMLSignalConnect}
\name{gladeXMLSignalConnect}
\title{gladeXMLSignalConnect}
\description{In the glade interface descriptions, signal handlers are specified for
widgets by name.  This function allows you to connect a C function to
all signals in the GladeXML file with the given signal handler name.}
\usage{gladeXMLSignalConnect(object, handlername, func)}
\arguments{
\item{\code{object}}{[\code{\link{GladeXML}}]  the GladeXML object}
\item{\code{handlername}}{[char]  the signal handler name}
\item{\code{func}}{[GCallback]  the signal handler function}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
