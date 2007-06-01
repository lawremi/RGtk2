\alias{gClass}
\alias{parentHandler}
\alias{registerVirtuals}
\alias{unregisterVirtuals}
\alias{assignProp}
\alias{getProp}
\name{classes}
\title{Custom GObject classes}
\description{Highly experimental support for constructing new \code{GObject}
classes entirely from with R.}
\usage{
  gClass(name, parent = "GObject", class_def = NULL)
  parentHandler(method, obj = NULL, ...)
  assignProp(obj, pspec, value)
  getProp(obj, pspec)
  registerVirtuals(virtuals)
  unregisterVirtuals(virtuals)
}
\arguments{
  \item{name}{The name of the new class}
  \item{parent}{The name of the parent class}
  \item{class_def}{A list that defines the new class - please see the details section}
  \item{method}{The name of the method to invoke in the parent}
  \item{obj}{A \code{\link{GObject}}}
  \item{...}{The additional arguments to the parent method}
  \item{pspec}{A \code{\link{GParamSpec}} describing the property}
  \item{value}{The value to set on the property}
  \item{virtuals}{An environment containing lists where each list contains
  the names of the virtual methods for the class matching the name of the list}.
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
    \code{get_property} virtuals in the \code{GObject} class. To override
    the implementation of properties defined by an ancestor class, specify their
    names in a separate vector named \code{.prop_overrides}. If you override
    the setting or getting of properties, you can use \code{assignProp} or
    \code{getProp} to conveniently directly assign or get the 
    value of a property to or from the low-level data structure, respectively. 
    These functions differ from the normal property accessor mechanism in that 
    they bypass the property system, thus avoiding recursion. They should
    only be used when overriding property handling.}
    \item{Initializer}{Upon instance creation, the function named
    \code{.initialize} (in \code{class_def}) will be called with the instance
    as the only argument.}
    \item{New members}{It is possible to define new public, protected, and
    private fields and methods inside an R class, using the \code{.public},
    \code{.protected}, and \code{.private} keys, respectively. The encapsulation
    works much the same as Java. Any protected and public functions may be
    overriden in a class derived from the defining class. All public fields
    are immutable. All function bindings are locked except for private ones. This
    means private functions can be replaced.}
  }
  The above may seem complicated, and it is. Please see the alphaSliderClass 
  for an example. Also note that the \code{local} function
  is convenient for defining static namespaces on the fly. For calling
  parent virtuals, use \code{parentHandler}.
  
  \code{assignProp} and \code{getProp} are low-level functions; they should
  not be used in place of the conventional \code{\link{GObject}} property
  mechanism, except in the case mentioned above.
  
  \code{registerVirtuals} and \code{unregisterVirtuals} are meant for use by 
  packages that bind C GObject classes to R using the RGtk2 system. An example
  of such a package is rggobi.
}
\note{
  This functionality is not for casual users. If you don't know what you're doing
  you will break things. Otherwise, have fun.
}
\value{
  For \code{gClass}, the \code{\link{GType}} of the new class.
  For \code{getProp}, the value of the property.
}
\author{Michael Lawrence}
\keyword{interface}
