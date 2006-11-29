\alias{gtkItemFactoryCreateItems}
\name{gtkItemFactoryCreateItems}
\title{gtkItemFactoryCreateItems}
\description{
Creates the menu items from the \code{entries}.
\strong{WARNING: \code{gtk_item_factory_create_items} has been deprecated since version 2.4 and should not be used in newly-written code. }
}
\usage{gtkItemFactoryCreateItems(object, entries, callback.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkItemFactory}}]  a \code{\link{GtkItemFactory}}}
\item{\code{entries}}{[\code{\link{GtkItemFactoryEntry}}]  a list of \code{\link{GtkItemFactoryEntry}}s whose \code{callback} members
   must by of type \code{\link{GtkItemFactoryCallback1}}}
\item{\code{callback.data}}{[R object]  data passed to the callback functions of all entries}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
