\name{GObject}
\title{The GObject system in RGtk2}
\alias{GObject}
\alias{gObjectGetPropInfo}
\alias{names.GObject}
\alias{gObjectGet}
\alias{gObjectSet}
\alias{gObjectGetData}
\alias{gObjectSetData}
\alias{gObject}
\alias{gObjectNew}
\alias{gtkObject}
\alias{gtkObjectNew}
\alias{gObjectGetSignals}
\alias{[.GObject}
\alias{[<-.GObject}
\alias{$.GObject}
\alias{$<-.GObject}
\alias{[[.GObject}
\alias{[[<-.GObject}
\alias{interface}
\alias{gObjectParentClass}
\alias{gTypeGetPropInfo}
\description{
GObject is the fundamental type providing the common attributes and 
methods for all object types in GTK+, Pango and other libraries based on GObject.
It provides facilities for object construction, properties, and signals.
}
\usage{
gObjectGet(obj, ..., drop = T)
\method{[}{GObject}(obj, value, ...)
gObjectSet(obj, ...)
\method{[}{GObject}(obj, propNames) <- value
\method{[[}{GObject}(obj, member, where = parent.frame())
\method{[[}{GObject}(obj, member) <- value
\method{$}{GObject}(x, member)
\method{$}{GObject}(obj, member) <- value
gObject(type, ...)
gObjectNew(type, ...)
gObjectSetData(obj, key, data = NULL) 
gObjectGetData(obj, key)
gObjectGetSignals(obj)
gObjectGetPropInfo(obj, parents = TRUE, collapse = TRUE)
gTypeGetPropInfo(type)
\method{names}{GObject}(x)
interface(obj)
gObjectParentClass(obj)
}
\arguments{
\item{obj}{an instance of a \code{GObject}}
\item{drop}{when retrieving the value of a single property, \code{TRUE} to
return the element from the list, instead of the list with just that element.}
\item{member}{the name of a member in an R-defined (custom) GObject class}
\item{type}{the type of \code{GObject}}
\item{key}{the unique identifier under which the data is stored}
\item{data}{the data to store with the \code{GObject}}
\item{...}{named arguments of properties to set or names of properties to retrieve}
\item{propNames}{the names properties to set or get}
\item{value}{a value with which to set a proprety}
\item{parents}{whether to include the parents when retrieving property info}
\item{collapse}{whether to collapse the properties over the parents}
\item{x}{The \code{GObject} for which the property names are to be
  retrieved}
\item{where}{The environment in which to look for the field accessor function}
}
\value{
Properties and data for \code{gObjectGet} and \code{gObjectGetData}, respectively. 
\code{gObjectNew} returns a new instance of the specified \code{type}.
\code{gObjectGetPropInfo} and \code{gTypeGetPropInfo} return a named list 
(or list of lists if \code{collapse} is \code{FALSE}) of 
properties (\code{\link{GParamSpec}}s) belonging to the \code{GObject} type and 
its parents (unless \code{parents} is \code{FALSE}).
\code{gObjectGetSignals} gets a list of signal ids with names for the signals supported by the object.
\code{gObjectParentClass} returns a pointer to the parent class of the object.
}
\details{
Every \code{GObject} has a type, known as a \code{\link{GType}}. Like all 
object-oriented paradigms, types may be (in this case singly) inherited. 
Thus, every \code{GObject} has a type that descends from the common 
\code{GObject} type. \code{GObject}s may also implement interfaces. The 
interfaces implemented by a particular object may be found in the 
\code{interfaces} attribute of an R object representing a \code{GObject}, 
for which, as you might expect, \code{inherits("GObject")} returns \code{TRUE}. 
To conveniently access this attribute, use \code{interface}.

A \code{GObject} is usually constructed with the constructor belonging 
to a particular subtype (for example, \code{\link{gtkWindowNew}} constructs a 
\code{\link{GtkWindow}}). It is also possible to use \code{\link{gObjectNew}} 
to construct an instance of \code{GObject} with the given type and properties.

The properties of a \code{GObject} are name-value pairs that may be retrieved 
and set using \code{gObjectGet} and \code{gObjectSet}, respectively. 
Whenever specifying properties as arguments in RGtk2, name the arguments with 
the property name and give the desired property value as the actual argument. 
For example, \code{gObjectSet(window, modal = T)} to make a window modal. For 
convenience, the \code{[.GObject} and \code{[<-.GObject} functions may be used 
to get and set properties, respectively. For example, 
\code{window["modal"] <- T}. Properties help describe the state of an 
object and are convenient for many reasons, including the ability to register
handlers that are invoked when a property changes. They are also associated
with metadata that describe their purpose and allow runtime checking of
constraints, such as the data type or range in the case of a numeric type.

This notification occurs via \code{GObject} signals, which are named hooks for 
which callbacks may be registered. The event driven system of GTK+ depends on 
signals for coordinating objects in response to both user and programmatic events. 
You can use \code{\link{gSignalConnect}} to connect an R function to a signal.

When new GObject classes are defined in R, they may provide additional fields
and methods. \code{[[.GObject} and \code{[[<-.GObject} get and set, respectively, 
those members, depending on permissions: private members are only available
to methods of the defining class, and protected only to subclasses of the
defining class. If \code{[[} fails to find an R-defined member, it searches
for a C field and then a GObject property. \code{[[<-} first tries to set a 
GObject property before looking
for an R member to ensure that properties are set through the proper channel.
Note that the bindings of public fields and public and protected methods are
locked, so they cannot be changed using \code{[[<-}. \code{$<-.GObject} serves
as a synonym of \code{[[<-.GObject}, but \code{$.GObject} first checks for a
function (see \code{\link{$.RGtkObject}}) before falling back to the behavior 
of \code{[[.GObject}.

Finally, arbitrary R objects can be stored in a \code{GObject} under a specific key 
for later retrieval. This can be achieved with \code{gObjectSetData} and 
\code{gObjectGetData}, respectively. This is similar to attributes in R, with 
a major difference being that changes occur in the external \code{GObject}, 
transcending the local R object.

\code{GObject}s also offer some introspection capabilities. \code{gObjectGetPropInfo} 
and \code{gObjectGetSignals} provide a list of supported properties and signals, respectively.
\code{names.GObject} lists the available properties for an object.
It is hoped that in the future methods and fields may also be introspected.
}
\seealso{
\code{\link{GType}}
\code{\link{GSignal}}
}
\references{\url{https://developer-old.gnome.org/gobject/stable/gobject-The-Base-Object-Type.html}}
\author{Michael Lawrence}
\keyword{interface}
