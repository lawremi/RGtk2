\alias{gtkItemFactoryCreateItemsAc}
\name{gtkItemFactoryCreateItemsAc}
\title{gtkItemFactoryCreateItemsAc}
\description{
Creates the menu items from the \code{entries}.
\strong{WARNING: \code{gtk_item_factory_create_items_ac} has been deprecated since version 2.4 and should not be used in newly-written code. }
}
\usage{gtkItemFactoryCreateItemsAc(object, entries, callback.data, callback.type)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkItemFactory}}]  a \verb{\link{GtkItemFactory}}}
\item{\verb{entries}}{[\verb{\link{GtkItemFactoryEntry}}]  a list of \verb{\link{GtkItemFactoryEntry}}s }
\item{\verb{callback.data}}{[R object]  data passed to the callback functions of all entries}
\item{\verb{callback.type}}{[numeric]  1 if the callback functions in \code{entries} are of type
   \verb{\link{GtkItemFactoryCallback1}}, 2 if they are of type \verb{\link{GtkItemFactoryCallback2}} }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
