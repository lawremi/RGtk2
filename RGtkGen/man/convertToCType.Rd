\name{convertToCType}
\alias{convertToCType}
\alias{convertToR}
\title{Generate code to convert from S to C and vice-versa}
\description{
  These functions generate the code that marshall a value from
  S to C and from C to S by calling the appropriate
  conversion function.
  These generate a string which is responsible for
  converting the  parameter identified by \code{name}
  and of type \code{type} to a C  or S value.

  \code{convertToCType} generates S code that is typically used
  to process arguments in S interface functions
  with the results passed on to the C routine.

  \code{convertToR} generates C code that is used at the end
  of a C interface routine that connects a routine or object field in
  the defs files and an S language function.
}
\usage{
convertToCType(name, type, defs)
convertToR(var, type, defs) 
}
\arguments{
  \item{name}{the name of the parameter in the S function
    defining the S-to-C interface. }
  \item{var}{same as \code{name}; the name of the parameter in the C routine
    defining the S-to-C interface. }  
  \item{type}{an object describing the target C type which is expected
    to be represented in the S argument.}
  \item{defs}{the collection of all the definitions in which to find the
   type information.}
}
\details{
  This is mainly hand-crafted piece of code consisting
  of numerous if-else clauses.
  It needs to be extended to handle lists, etc.
  and made more externally extensible by looking
  up tables or invoking generic functions allowing for methods.
}
\value{
  A string giving the code that performs the
  coercion and/or dereferencing of the S value
  to return a corresponding C value.
}
\references{\url{http://www.omegahat.net/RGtk},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{
\code{\link{genCCode}}  
\code{\link{genFieldAccessors}}
}

\examples{

}
\keyword{programming}

