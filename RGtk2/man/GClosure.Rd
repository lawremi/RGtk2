\name{GClosure}
\alias{GClosure}
\alias{toRGClosure}
\title{The GClosure structure}
\description{Basically, a \code{GClosure} is a \link{transparent-type} that represents an R function.}
\usage{toRGClosure(c_closure)}
\arguments{
\item{c_closure}{a \code{GClosure}}
}
\value{
an R closure with an extra \code{ref} attribute holding the original external reference
}
\details{
When an API function requests a \code{GClosure} as a parameter, the user may pass any R function OR 
an R object of class \code{GClosure} that is returned by certain API functions.
A \code{GClosure} represents an external object and thus inherits from \code{\link{RGtkObject}}.
The external \code{GClosure} objects may be coerced by the function \code{toRGClosure} 
to an R closure. This means that you can effectively invoke external closures 
(which may be implemented in C or R) in the same way as R functions.
}
\author{Michael Lawrence}
\keyword{interface}
\keyword{internal}

