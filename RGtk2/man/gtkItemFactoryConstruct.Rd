\alias{gtkItemFactoryConstruct}
\name{gtkItemFactoryConstruct}
\title{gtkItemFactoryConstruct}
\description{
Initializes an item factory.
\strong{WARNING: \code{gtk_item_factory_construct} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryConstruct(object, container.type, path, accel.group)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkItemFactory}}}
\item{\verb{container.type}}{the kind of menu to create; can be
\verb{GTK_TYPE_MENU_BAR}, \verb{GTK_TYPE_MENU} or \verb{GTK_TYPE_OPTION_MENU}}
\item{\verb{path}}{the factory path of \code{ifactory}, a string of the form
\code{"<name>"}}
\item{\verb{accel.group}}{a \code{\link{GtkAccelGroup}} to which the accelerators for the
menu items will be added, or \code{NULL} to create a new one}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
