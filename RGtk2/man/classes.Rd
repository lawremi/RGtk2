\alias{gClass}
\name{classes}
\title{Custom GObject classes}
\description{Highly experimental support for constructing new \code{GObject}
classes entirely from with R.}
\usage{
  gClass(name, parent = "GObject", class_def = NULL)
}
\arguments{
  \item{name}{The name of the new class}
  \item{parent}{The name of the parent class}
  \item{class_def}{A list that defines the new class - please see the details section}
}
\details{
  The bulk of the class definition (everything except the name and the parent) 
  is contained in the \code{class_def} parameter. This includes:
  \describe{
    \item{Methods}{R functions that override virtuals methods in a \code{GObject} class.
    Functions overriding methods in the same class are grouped together in a list and 
    are named according to the virtual they override. Each list is a member of the
    \code{class_def} list and bears the name of the corresponding class.}
    \item{Signals}{Signals that are emitted by the class, in addition to those
    of the superclasses. Each signal definition is a list containing the 
    following elements: signal name, vector of type names of signal arguments,
    type name of signal return value, and a vector of values from the 
    \code{\link{GSignalFlags}} enumeration. The list of signal definitions
    has the name \code{.signals} in the \code{class_def} list.}
    \item{Properties}{Properties defined by the class. This is a list of lists,
    each corresponding to a \code{GParamSpec}, as created by \code{\link{gParamSpec}}.
    The list is named \code{.props} in the \code{class_def} list. The property values
    are stored in a private environment. To override that behavior or to be notified
    (first) upon property changes, simply override the \code{set_property} and 
    \code{get_property} virtuals in the \code{GObject} class.}
    \item{Initializer}{Upon instance creation, the function named
    \code{.initialize} (in \code{class_def}) will be called with the instance
    as the only argument.}
  }
  The above may seem complicated, and it is. Please see the alphaSliderClass and
  sexyUrlLabel demos for examples of use. Also note that the \code{local} function
  is convenient for defining class-specific namespaces on the fly. For calling
  parent virtuals, use \code{\link{gObjectParentClass}} to conveniently obtain
  a reference to the parent class.
}
\note{
  This functionality is not for casual users. If you don't know what you're doing
  you will break things. Otherwise, have fun.
}
\value{
  The \code{\link{GType}} of the new class.
}
\author{Michael Lawrence}
\keyword{interface}
