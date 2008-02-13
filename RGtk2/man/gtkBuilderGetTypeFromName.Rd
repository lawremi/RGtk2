\alias{gtkBuilderGetTypeFromName}
\name{gtkBuilderGetTypeFromName}
\title{gtkBuilderGetTypeFromName}
\description{Looks up a type by name, using the virtual function that 
\code{\link{GtkBuilder}} has for that purpose.}
\usage{gtkBuilderGetTypeFromName(object, type.name)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBuilder}}]  a \code{\link{GtkBuilder}}}
\item{\code{type.name}}{[char]  type name to lookup}
}
\details{  Since  2.12}
\value{[\code{\link{GType}}]  the \code{\link{GType}} found for \code{type.name} or \code{G_TYPE_INVALID} 
  if no type was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
