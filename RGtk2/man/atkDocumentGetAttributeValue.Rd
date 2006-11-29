\alias{atkDocumentGetAttributeValue}
\name{atkDocumentGetAttributeValue}
\title{atkDocumentGetAttributeValue}
\description{Returns:}
\usage{atkDocumentGetAttributeValue(object, attribute.name)}
\arguments{
\item{\code{object}}{[\code{\link{AtkDocument}}]  a \code{\link{GObject}} instance that implements AtkDocumentIface}
\item{\code{attribute.name}}{[character]  a character string representing the name of the attribute
           whose value is being queried.}
}
\details{  Since  ATK 1.12}
\value{[character]  a string value associated with the named attribute for this
   document, or NULL if a value for \code{attribute_name} has not been specified
   for this document.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
