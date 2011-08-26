\alias{gtkItemFactoryFromPath}
\name{gtkItemFactoryFromPath}
\title{gtkItemFactoryFromPath}
\description{
Finds an item factory which has been constructed using the 
\code{"<name>"} prefix of \code{path} as the \code{path} argument 
for \code{\link{gtkItemFactoryNew}}.
\strong{WARNING: \code{gtk_item_factory_from_path} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryFromPath(path)}
\arguments{\item{\verb{path}}{a string starting with a factory path of the form
\code{"<name>"}}}
\value{[\code{\link{GtkItemFactory}}] the \code{\link{GtkItemFactory}} created for the given factory path, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
