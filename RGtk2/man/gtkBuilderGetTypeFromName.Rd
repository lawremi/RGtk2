\alias{gtkBuilderGetTypeFromName}
\name{gtkBuilderGetTypeFromName}
\title{gtkBuilderGetTypeFromName}
\description{Looks up a type by name, using the virtual function that 
\verb{\link{GtkBuilder}} has for that purpose. This is mainly used when
implementing the \verb{\link{GtkBuildable}} interface on a type.}
\usage{gtkBuilderGetTypeFromName(object, type.name)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBuilder}}]  a \verb{\link{GtkBuilder}}}
\item{\verb{type.name}}{[char]  type name to lookup}
}
\details{  Since  2.12}
\value{[\verb{\link{GType}}]  the \verb{\link{GType}} found for \code{type.name} or \verb{G_TYPE_INVALID} 
  if no type was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
