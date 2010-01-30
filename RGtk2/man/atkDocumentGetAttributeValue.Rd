\alias{atkDocumentGetAttributeValue}
\name{atkDocumentGetAttributeValue}
\title{atkDocumentGetAttributeValue}
\description{\emph{undocumented
}}
\usage{atkDocumentGetAttributeValue(object, attribute.name)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkDocument}}]  a \verb{\link{GObject}} instance that implements AtkDocumentIface}
\item{\verb{attribute.name}}{[character]  a character string representing the name of the attribute
           whose value is being queried.}
}
\details{  Since  ATK 1.12}
\value{[character]  a string value associated with the named attribute for this
   document, or NULL if a value for \verb{attribute_name} has not been specified
   for this document.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
