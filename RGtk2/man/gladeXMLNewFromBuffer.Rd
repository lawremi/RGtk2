\alias{gladeXMLNewFromBuffer}
\name{gladeXMLNewFromBuffer}
\title{gladeXMLNewFromBuffer}
\description{Creates a new GladeXML object (and the corresponding widgets) from the
buffer \code{buffer}.  Optionally it will only build the interface from the
widget node \code{root} (if it is not \code{NULL}).  This feature is useful if you
only want to build say a toolbar or menu from the XML document, but not the
window it is embedded in.}
\usage{gladeXMLNewFromBuffer(buffer, size = nchar(buffer), root = NULL, domain = NULL)}
\arguments{
\item{\code{buffer}}{[char]  the memory buffer containing the XML document.}
\item{\code{size}}{[integer]  the size of the buffer.}
\item{\code{root}}{[char]  the widget node in \code{buffer} to start building from (or \code{NULL})}
\item{\code{domain}}{[char]  the translation domain to use for this interface (or \code{NULL})}
}
\value{[\code{\link{GladeXML}}]  the newly created GladeXML object, or NULL on failure.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
