\alias{atkDocumentSetAttributeValue}
\name{atkDocumentSetAttributeValue}
\title{atkDocumentSetAttributeValue}
\description{\emph{undocumented
}}
\usage{atkDocumentSetAttributeValue(object, attribute.name, attribute.value)}
\arguments{
\item{\code{object}}{[\code{\link{AtkDocument}}]  a \code{\link{GObject}} instance that implements AtkDocumentIface}
\item{\code{attribute.name}}{[character]  a character string representing the name of the attribute
           whose value is being set.}
\item{\code{attribute.value}}{[character]  a string value to be associated with \code{attribute_name}.}
}
\details{  Since  ATK 1.12}
\value{[logical]  TRUE if \code{value} is successfully associated with \code{attribute_name}
         for this document, FALSE otherwise (e.g. if the document does not
         allow the attribute to be modified).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
