\alias{gtkItemFactoryFromPath}
\name{gtkItemFactoryFromPath}
\title{gtkItemFactoryFromPath}
\description{
Finds an item factory which has been constructed using the 
\code{"<name>"} prefix of \code{path} as the \code{path} argument 
for \code{\link{gtkItemFactoryNew}}.
\strong{WARNING: \code{gtk_item_factory_from_path} is deprecated and should not be used in newly-written code.}
}
\usage{gtkItemFactoryFromPath(path)}
\arguments{\item{\code{path}}{[character]  a string starting with a factory path of the form 
  \code{"<name>"}}}
\value{[\code{\link{GtkItemFactory}}]  the \code{\link{GtkItemFactory}} created for the given factory path, or \code{NULL} }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
