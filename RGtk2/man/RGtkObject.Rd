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
\method{[[}{RGtkObject}(x, field, where = parent.frame())
\method{$}{RGtkObject}(x, member)
\method{==}{RGtkObject}(x, y)
}
\arguments{
\item{x}{The \code{RGtkObject} to which the method or field belongs or the left hand of a comparison}
\item{field}{The name of the field whose value will be retrieved}
\item{member}{The name of the member (eg method) that will be retrieved}
\item{y}{The right hand operand of a comparison}
\item{where}{The environment in which to look for the field accessor function}
}
\value{
A context-dependent value resulting from the specified API call.
}
\details{
The functions \code{[[.RGtkObject} and \code{$.RGtkObject} both expand to an 
RGtk function that accesses external objects. The \code{[[} operator
looks for a field from an external C structure
by expanding \code{objectOfClassName[[fieldName]]} to \code{classNameGetFieldName()}.
External "methods" are expanded by the \code{$} operator to form 
\code{classNameMethodName(objectOfClassName, ...)} from the Java-like 
\code{objectOfClassName$methodName(...)}. The long and short mechanisms give 
the same result, but the shortcut is obviously more convenient. If the method
does not exist, \code{$} will fall back to other types of members, like
properties (for \code{\link{GObject}}s) and fields.

The \code{==} operator compares two \code{RGtkObject}s on the basis of their internal pointer value.
This should rarely be useful for users.
}
\author{Michael Lawrence}
\keyword{interface}
