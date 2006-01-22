\name{RGtkObject}
\alias{RGtkObject}
\alias{[[.RGtkObject}
\alias{$.RGtkObject}
\title{The base object of RGtk2}
\description{
\code{RGtkObject} identifies an external object as being owned by \link{RGtk}.
Practically, it allows convenience operators to be specified for any external object.
}
\usage{
"[[.RGtkObject"(x, field)
"$.RGtkObject"(x, method)
}
\arguments{
\item{x}{The \code{RGtkObject} to which the method or field belongs}
\item{field}{The name of the field whose value will be retrieved}
\item{method}{The name of the method that will be expanded to a function}
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
}
\author{Michael Lawrence}
\keyword{interface}
