\alias{gladeXMLConstruct}
\name{gladeXMLConstruct}
\title{gladeXMLConstruct}
\description{This routine can be used by bindings (such as gtkmm) to help construct
a GladeXML object, if it is needed.}
\usage{gladeXMLConstruct(object, fname, root = NULL, domain = NULL)}
\arguments{
\item{\verb{object}}{[\code{\link{GladeXML}}]  the GladeXML object}
\item{\verb{fname}}{[char]  the XML filename}
\item{\verb{root}}{[char]  the root widget node (or \code{NULL} for none)}
\item{\verb{domain}}{[char]  the translation domain (or \code{NULL} for the default)}
}
\value{[logical]  TRUE if the construction succeeded.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
