\alias{gtkItemFactoryFromWidget}
\name{gtkItemFactoryFromWidget}
\title{gtkItemFactoryFromWidget}
\description{
Obtains the item factory from which a widget was created.
\strong{WARNING: \code{gtk_item_factory_from_widget} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryFromWidget(widget)}
\arguments{\item{\verb{widget}}{a widget}}
\value{[\code{\link{GtkItemFactory}}] the item factory from which \code{widget} was created, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
