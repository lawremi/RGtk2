\alias{gtkItemFactoryCreateItemsAc}
\name{gtkItemFactoryCreateItemsAc}
\title{gtkItemFactoryCreateItemsAc}
\description{
Creates the menu items from the \code{entries}.
\strong{WARNING: \code{gtk_item_factory_create_items_ac} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryCreateItemsAc(object, entries, callback.data, callback.type)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkItemFactory}}}
\item{\verb{entries}}{a list of \code{\link{GtkItemFactoryEntry}}s}
\item{\verb{callback.data}}{data passed to the callback functions of all entries}
\item{\verb{callback.type}}{1 if the callback functions in \code{entries} are of type
\code{\link{GtkItemFactoryCallback1}}, 2 if they are of type \code{\link{GtkItemFactoryCallback2}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
