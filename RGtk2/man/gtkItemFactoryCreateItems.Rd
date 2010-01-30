\alias{gtkItemFactoryCreateItems}
\name{gtkItemFactoryCreateItems}
\title{gtkItemFactoryCreateItems}
\description{
Creates the menu items from the \code{entries}.
\strong{WARNING: \code{gtk_item_factory_create_items} has been deprecated since version 2.4 and should not be used in newly-written code. }
}
\usage{gtkItemFactoryCreateItems(object, entries, callback.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkItemFactory}}]  a \verb{\link{GtkItemFactory}}}
\item{\verb{entries}}{[\verb{\link{GtkItemFactoryEntry}}]  a list of \verb{\link{GtkItemFactoryEntry}}s whose \code{callback} members
   must by of type \verb{\link{GtkItemFactoryCallback1}}}
\item{\verb{callback.data}}{[R object]  data passed to the callback functions of all entries}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
