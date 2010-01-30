\alias{gladeXMLNew}
\name{gladeXMLNew}
\title{gladeXMLNew}
\description{Creates a new GladeXML object (and the corresponding widgets) from the
XML file \code{fname}.  Optionally it will only build the interface from the
widget node \code{root} (if it is not \code{NULL}).  This feature is useful if you
only want to build say a toolbar or menu from the XML file, but not the
window it is embedded in.  Note also that the XML parse tree is cached
to speed up creating another GladeXML object for the same file}
\usage{gladeXMLNew(fname, root = NULL, domain = NULL)}
\arguments{
\item{\verb{fname}}{[char]  the XML file name.}
\item{\verb{root}}{[char]  the widget node in \code{fname} to start building from (or \code{NULL})}
\item{\verb{domain}}{[char]  the translation domain for the XML file (or \code{NULL} for default)}
}
\value{[\verb{\link{GladeXML}}]  the newly created GladeXML object, or NULL on failure.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
