\alias{gFileInfoGetAttributeAsString}
\name{gFileInfoGetAttributeAsString}
\title{gFileInfoGetAttributeAsString}
\description{Gets the value of a attribute, formated as a string.
This escapes things as needed to make the string valid
utf8.}
\usage{gFileInfoGetAttributeAsString(object, attribute)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInfo}}.}
\item{\verb{attribute}}{a file attribute key.}
}
\value{[char] a UTF-8 string associated with the given \code{attribute}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
