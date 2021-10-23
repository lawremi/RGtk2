\name{GType}
\alias{GType}
\alias{gTypeGetAncestors}
\alias{gTypeGetInterfaces}
\alias{gTypeFromName}
\alias{gTypeGetClass}
\alias{gTypeGetSignals}
\alias{print.GType}
\alias{format.GType}
\title{The GType system}
\description{
"The GType API is the foundation of the GObject system. It provides the
facilities for registering and managing all fundamental data types,
user-defined object and interface types." - GObject documentation
}
\usage{
gTypeGetAncestors(type)
gTypeGetInterfaces(type)
gTypeFromName(name)
gTypeGetClass(type)
gTypeGetSignals(type)
}
\arguments{
\item{type}{The \code{GType}, either its name or numeric value, see below}
\item{name}{The name of a \code{GType}}
}
\value{
\code{gTypeGetAncestors} returns a vector of type names from which
\code{type} inherits.

\code{gTypeGetInterfaces} names the interfaces implemented by
\code{type}.

\code{gTypeFromName} retrieves the numeric value of a type from its
name.

\code{gTypeGetClass} returns the class instance for the type, for
example \code{\link{GtkWidgetClass}}.

\code{gTypeGetSignals} returns a list of signal ids with names for the
signals supported by the type.
}
\details{
The \code{GType} system supports inheritance and interfaces, enabling the 
psuedo-object-oriented system known as \code{\link{GObject}}. However, they 
also encompass all fundamental (primitive) types.

A \code{GType} is considered a \code{\link{transparent-type}} in RGtk2,
since you may specify one as either the type name or the numeric value
retrieved from some API function like \code{gTypeFromName}. The
\code{GType} system obviously names primitive types different from the
corresponding types in R, but this is automatically taken care of for
you, so you can use R type names (ie, "character", "logical", etc) when
specifying a \code{GType}. This means that \code{gTypeFromName} is not
that useful to the RGtk2 programmer.

All R objects representing external RGtk2 objects have their hierarchy
stored in the \code{class} attribute. Everything descends from
"RGtkObject", then, for example, "GObject", etc. The types do not
necessarily correspond to \code{GType}s, but they do for all
\code{GObject}s and others. Thus, \code{gTypeGetAncestors} is also of
little use unless one is working with pure \code{GType}s.
}
\seealso{\code{\link{GObject}}}
\references{\url{https://developer-old.gnome.org/gobject/stable/gobject-Type-Information.html}}
\author{Michael Lawrence}
\keyword{interface}
