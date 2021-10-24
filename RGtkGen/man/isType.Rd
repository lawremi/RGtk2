\name{isEnum}
\alias{isEnum}
\alias{isFlag}
\alias{isWidgetClass}
\alias{isPrimitiveType}
\alias{isConstructor}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Predicate functions for identifying type of symbolic definition}
\description{
  These are a collection of logical or predicate functions used
  to determine if a given name in the symbolic definitions
  identifies a particular type of definition such as a class,
  enumeration value, flag or a primitive type.
}
\usage{
isEnum(type, enums)
isFlag(type, flags)
isWidgetClass(name, classes, gtkType = "GtkWidget")
isConstructor(name)
isPrimitiveType(x)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{type}{the name of the element in the definitions being queried}
  \item{name}{the name of the element in the definitions being queried}
  \item{x}{the name of the element in the definitions being queried}  
  \item{enums}{the collection of all enumeration definitions}
  \item{flags}{the collection of all flag definitions}
  \item{classes}{the collection of class definitions}
  \item{gtkType}{the identifier for the class for which we want to
    determine if the class \code{name} extends.
    This is used by looking for a corresponding entry in the class hierarchy
    for \code{name}.
    This allows us to use this function not simply for widgets, but
    any class.
  }
}
\details{

}
\value{
  A logical value indicating whether the identified
  element is of the queried type.
  
}
\references{\url{http://www.omegahat.net/RGtk/},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{}

\examples{

}
\keyword{programming}

