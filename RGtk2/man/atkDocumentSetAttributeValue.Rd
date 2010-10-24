\alias{atkDocumentSetAttributeValue}
\name{atkDocumentSetAttributeValue}
\title{atkDocumentSetAttributeValue}
\description{\emph{undocumented
}}
\usage{atkDocumentSetAttributeValue(object, attribute.name, attribute.value)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkDocument}}]  a \code{\link{GObject}} instance that implements AtkDocumentIface}
\item{\verb{attribute.name}}{[character]  a character string representing the name of the attribute
           whose value is being set.}
\item{\verb{attribute.value}}{[character]  a string value to be associated with \verb{attribute_name}.}
}
\details{  Since 1.12}
\value{[logical]  TRUE if \verb{value} is successfully associated with \verb{attribute_name}
         for this document, FALSE otherwise (e.g. if the document does not
         allow the attribute to be modified).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
