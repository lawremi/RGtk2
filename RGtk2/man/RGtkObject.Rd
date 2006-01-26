\name{RGtkObject}
\alias{RGtkObject}
\alias{[[.RGtkObject}
\alias{$.RGtkObject}
\alias{==.RGtkObject}
\title{The base object of RGtk2}
\description{
\code{RGtkObject} identifies an external object as being owned by \link{RGtk}.
Practically, it allows convenience operators to be specified for any external object.
}
\usage{
"[[.RGtkObject"(x, field)
"$.RGtkObject"(x, method)
"==.RGtkObject"(x, y)
}
\arguments{
\item{x}{The \code{RGtkObject} to which the method or field belongs or the left hand of a comparison}
\item{field}{The name of the field whose value will be retrieved}
\item{method}{The name of the method that will be expanded to a function}
\item{y}{The right hand operand of a comparison}
}
\value{
A context-dependent value resulting from the specified API call.
}
\details{
The operators \code{[[} and \code{$} both expand to an RGtk function that accesses
external objects. The \code{[[} operator retrieves a field value from an external structure 
by expanding \code{objectOfClassName[[fieldName]]} to \code{classNameGetFieldName()}. 
External "methods" are expanded by the \code{$} operator to form 
\code{classNameMethodName(objectOfClassName, ...)} from the Java-like 
\code{objectOfClassName$methodName(...)}. The long and short mechanisms give 
the same result, but the shortcut is obviously more convenient.

The \code{==} operator compares two \code{RGtkObject}s on the basis of their internal pointer value.
This should rarely be useful for users.
}
\author{Michael Lawrence}
\keyword{interface}
