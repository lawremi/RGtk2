\name{GObject}
\title{The GObject system in RGtk2}
\alias{GObject}
\alias{gObjectGetPropInfo}
\alias{gObjectGet}
\alias{gObjectSet}
\alias{gObjectGetData}
\alias{gObjectSetData}
\alias{gObjectNew}
\alias{gObjectGetSignals}
\alias{[.GObject}
\alias{[<-.GObject}
\description{
GObject is the fundamental type providing the common attributes and 
methods for all object types in GTK+, Pango and other libraries based on GObject.
It provides facilities for object construction, properties, and signals.
}
\usage{
gObjectGet(obj, ...)
"[.GObject"(obj, name)
gObjectSet(obj, ...)
"[<-.GObject"(obj, name, value)
gObjectNew(type, ...)
gObjectSetData(obj, key, data = NULL) 
gObjectGetData(obj, key)
gObjectGetSignals(obj)
gObjectGetPropInfo(obj, parents = TRUE, collapse = FALSE)
}
\arguments{
\item{obj}{an instance of a \code{GObject}}
\item{type}{the type of \code{GObject} to create}
\item{key}{the unique identifier under which the data is stored}
\item{data}{the data to store with the \code{GObject}}
\item{...}{named arguments of properties to set or names of properties to retrieve}
\item{name}{the name of a property to set or get}
\item{value}{a value with which to set a proprety}
\item{parents}{whether to include the parents when retrieving property info}
\item{collapse}{whether to collapse the properties over the parents}
}
\value{
Properties and data for \code{gObjectGet} and \code{gObjectGetData}, respectively. 
\code{gObjectNew} returns a new instance of the specified \code{type}.
\code{gObjectGetPropInfo} returns a named list of property info pertaining to a \code{GObject} type, 
including the types of the properties and their flags (read-only, read-write, construct, etc). 
\code{gObjectGetSignals} gets a list of signal ids with names for the signals supported by the object.
}
\details{
Every \code{GObject} has a type, known as a \code{\link{GType}}. Like all 
object-oriented paradigms, types may be (in this case singly) inherited. 
Thus, every \code{GObject} has a type that descends from the common 
\code{GObject} type. \code{GObject}s may also implement interfaces. The 
interfaces implemented by a particular object may be found in the 
\code{interfaces} attribute of an R object representing a \code{GObject}, 
for which, as you might expect, \code{inherits("GObject")} returns \code{TRUE}.

A \code{GObject} is usually constructed with the constructor belonging 
to a particular subtype (for example, \code{\link{gtkWindowNew}} constructs a 
\code{\link{GtkWindow}}). It is also possible to use \code{\link{gObjectNew}} 
to construct an instance of \code{GObject} with the given type and properties.

The properties of a \code{GObject} are name-value pairs that may be retrieved 
and set using \code{gObjectGet} and \code{gObjectSet}, respectively. 
Whenever specifying properties as arguments in RGtk2, name the arguments with 
the property name and give the desired property value as the actual argument. 
For example, \code{gObjectSet(window, modal = T)} to make a window modal. For 
convenience, the \code{[} operator may be used to get/set properties. For example, 
\code{window["modal"] <- T}. Properties at least partly describe the state of an 
object and are convenient for many reasons, including the capability of 
notification upon property changes. 

This notification occurs via \code{GObject} signals, which are named hooks for 
which callbacks may be registered. The event driven system of GTK+ depends on 
signals for coordinating objects in response to both user and programmatic events. 
You can use \code{\link{gSignalConnect}} to connect an R function to a signal.

Finally, arbitrary R objects can be stored in a \code{GObject} under a specific key 
for later retrieval. This can be achieved with \code{gObjectSetData} and 
\code{gObjectGetData}, respectively. This is similar to attributes in R, with 
a major difference being that changes occur in the external \code{GObject}, 
transcending the local R object.

\code{GObject}s also offer some introspection capabilities. \code{gObjectGetPropInfo} 
and \code{gObjectGetSignals} provide a list of supported properties and signals, respectively.
It is hoped that in the future methods and fields may also be introspected.
}
\seealso{
\code{\link{GType}}
\code{\link{GSignal}}
}
\references{\url{http://developer.gnome.org/doc/API/2.0/gobject/gobject-The-Base-Object-Type.html}}
\author{Michael Lawrence}
\keyword{interface}
