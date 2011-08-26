\alias{gtkBuilderGetTypeFromName}
\name{gtkBuilderGetTypeFromName}
\title{gtkBuilderGetTypeFromName}
\description{Looks up a type by name, using the virtual function that 
\code{\link{GtkBuilder}} has for that purpose. This is mainly used when
implementing the \code{\link{GtkBuildable}} interface on a type.}
\usage{gtkBuilderGetTypeFromName(object, type.name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBuilder}}}
\item{\verb{type.name}}{type name to lookup}
}
\details{Since 2.12}
\value{[\code{\link{GType}}] the \code{\link{GType}} found for \code{type.name} or \verb{G_TYPE_INVALID}
if no type was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
