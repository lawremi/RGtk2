\name{enums-and-flags}
\title{Enums and Flags}
\alias{enums-and-flags}
\alias{as.flag}
\alias{[.flags}
\alias{[.enums}
\alias{|.flag}
\alias{&.flag}
\alias{!.flag}
\alias{==.enum}
\alias{print.enum}
\alias{print.flag}
\alias{print.enums}
\alias{print.flags}

\description{Convenience functions and operators for operating on bitflags and enums}
\usage{
as.flag(x)
\method{[}{flags}(x, value)
\method{|}{flag}(x, y)
\method{&}{flag}(x, y)
\method{!}{flag}(x)
\method{==}{enum}(x, y)
}
\arguments{
\item{x}{Numeric value to coerce to a \code{flag}, an object of class \code{flags}, or the left hand operand}
\item{y}{Right hand operand}
\item{value}{The character id or index for a particular flag in a \code{flags} vector}
}
\value{
A \code{flag} for \code{as.flag}, \code{[.flags}, and the bitwise operators.
A logical value for \code{==.enum}.
}
\details{
The libraries bound by RGtk2 often return numeric values that are either bitflags or enumerations.
In order to facilitate operations on these types (especially bitflags), several methods 
have been defined corresponding to conventional operators for performing bitwise operations 
and comparisons. 

RGtk2 defines all of the enum and flag types from the API's as vectors of class 
\code{flags} or \code{enums} with their names corresponding to the 
nicknames of the values. The \code{[} operator on the
\code{flags} or \code{enums} class 
retrieves a value as a \code{flag} or \code{enum}, respectively.

The \code{==.enum} method compares a \code{enum} with either a 
character or numeric representation of an enum value.
}
\note{
  Sometimes the API does not return a value specifically as a \code{flag}. 
  In this case, it is a generic numeric value and should be coerced with \code{as.flag}.
}
\author{Michael Lawrence}
\keyword{interface}
