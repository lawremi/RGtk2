\alias{gtkItemFactoryConstruct}
\name{gtkItemFactoryConstruct}
\title{gtkItemFactoryConstruct}
\description{
Initializes an item factory.
\strong{WARNING: \code{gtk_item_factory_construct} is deprecated and should not be used in newly-written code.  
Initializes an item factory.  }
}
\usage{gtkItemFactoryConstruct(object, container.type, path, accel.group)}
\arguments{
\item{\code{object}}{[\code{\link{GtkItemFactory}}]  a \code{\link{GtkItemFactory}}}
\item{\code{container.type}}{[\code{\link{GType}}]  the kind of menu to create; can be
   \code{GTK_TYPE_MENU_BAR}, \code{GTK_TYPE_MENU} or \code{GTK_TYPE_OPTION_MENU}}
\item{\code{path}}{[character]  the factory path of \code{ifactory}, a string of the form 
   \code{"<name>"}}
\item{\code{accel.group}}{[\code{\link{GtkAccelGroup}}]  a \code{\link{GtkAccelGroup}} to which the accelerators for the
   menu items will be added, or \code{NULL} to create a new one}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
