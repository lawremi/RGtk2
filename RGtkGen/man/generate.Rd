\name{genCEnum}
\alias{genCEnum}
\alias{genFieldAccessor}
\alias{genFieldAccessorRCode}
\alias{genFieldAccessorCCode}
\alias{genFieldAccessors}
\title{Generate C code for accessors and enumeration elements}
\description{
  These functions generate code S and C code to
  acess slots or fields in a Gtk object from S.
}
\usage{
genCEnum(enum, name, defs = NULL, local = T, isEnum = T)
genFieldAccessor(name, type, className, defs)
genFieldAccessorCCode(name, className, croutine, type, defs)
genFieldAccessorRCode(sname, className, croutine, type, defs)
genFieldAccessors(defs)
}
\arguments{
  \item{enum}{the definition of the specific enumeration, usually read from
    the  .defs files via \code{\link{getDefs}}.}
  \item{name}{For the other functions, this is the name of the S variable under which the enumeration
    constants will be stored.}
  \item{defs}{the collection of definitions of classes, enumerations,
    etc. read from the .defs files}
  \item{local}{unused}
  \item{isEnum}{a logical value indicating whether the definition is for
  an enumeration or a Gtk flag.}
  \item{type}{the name of the Gtk type of the field}
  \item{className}{the name of the S class in which the field is
    located.
    This is used in the generated code to verify that the source object
    is of the correct type.}
  \item{croutine}{the name of the C routine which is to be called to
    fetch the value of the field.}
  \item{sname}{the name of the S function/variable which is to hold the field accessor.}
}
\value{
  \code{genFieldAccessorRCode} returns a string giving the definition
  of an S function for accessing the particular slot/field in the source
  object.

  \code{genFieldAccessorCCode} returns the associated C code
  for accessing the field in the source that is called by the S accessor
  function.

  \code{genFieldAccessor} returns a list containing the S and C code
  for accessing the specified field. These are identified by named elements
  \code{rcode} and \item{ccode}.
  
  \code{genFieldAccessors} returns a list with an element for each of
  the classes in the collection of definitions.
  Each element is itself a list whose elements correspond to the
  different fields directly defined within that class (i.e. not
  inherited fields).  And each element in this sub-list is the
  list returned from \code{genFieldAccessor} for that field.
}
\references{\url{http://www.omegahat.org/RGtk},
  \url{http://www.omegahat.org/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{
\code{\link{genCode}}
}

\examples{

}
\keyword{programming}

