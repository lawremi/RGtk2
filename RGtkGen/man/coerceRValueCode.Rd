\name{coerceRValueCode}
\alias{coerceRValueCode}
\alias{getPrimitiveTypeAs}
\title{Generate R code to coerce R object to type.}
\description{
  This generates R code which checks and
  potentially coerces an argument
  to an S function to the appropriate type
  as required by C code to which the argument
  will be passed.
}
\usage{
coerceRValueCode(type, name, defs)
getPrimitiveTypeAs(x)
}
\arguments{
  \item{type}{the target type to which the variable \code{name} is to be
    converted.}
  \item{name}{the name of the S variable to be used in the generated converstion code}
  \item{defs}{the collection of class, enumeration, etc. definitions
    collected from the .defs files in which to find information about
    the types.
  }
  \item{x}{the name of the primitive S type. This is then used to index
    the table \code{PrimitveTypeCoercion}  by name.}
}
\details{
  This is not extensible, but instead uses a collection of
  if-else statements to determine how to convert the
  variable to the appropriate type.
  It checks for primitives, enumerations, a string array
  and then punts by assuming \code{\link[RGtk]{gtkCheckInherits}}
  will suffice.
}
\value{
  A list giving the
  name of the variable and the code to coerce it.
  \item{name}{the value of the \code{name} argument converted to
  an S variable name using \code{\link{nameToS}}}
 \item{coerce}{the string giving the code to convert to the variable
   to the appropriate form.}

 \code{getPrimitiveTypeAs} returns the name of the S function that
 converts the primitive S value to the appropriate type.
}
\references{
 \url{http://www.omegahat.net/RGtk}
 \url{http://www.omegahat.net/GtkAutoBindingGen}  
 \url{http://www.gtk.org}
}
\author{Duncan Temple Lang}

\seealso{
  \code{\link{genCode}}
  \code{\link{nameToS}}
}

\examples{
 data(GtkDefs)
 coerceRValueCode("GtkWidget", "w",  GtkDefs)
}
\keyword{programming}

