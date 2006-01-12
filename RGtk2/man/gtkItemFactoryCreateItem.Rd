\alias{gtkItemFactoryCreateItem}
\name{gtkItemFactoryCreateItem}
\title{gtkItemFactoryCreateItem}
\description{
Creates an item for \code{entry}.
\strong{WARNING: \code{gtk_item_factory_create_item} is deprecated and should not be used in newly-written code.}
}
\usage{gtkItemFactoryCreateItem(object, entry, callback.data = NULL, callback.type)}
\arguments{
\item{\code{object}}{[\code{\link{GtkItemFactory}}]  a \code{\link{GtkItemFactory}}}
\item{\code{entry}}{[\code{\link{GtkItemFactoryEntry}}]  the \code{\link{GtkItemFactoryEntry}} to create an item for}
\item{\code{callback.data}}{[R object]  data passed to the callback function of \code{entry}}
\item{\code{callback.type}}{[numeric]  1 if the callback function of \code{entry} is of type
   \code{\link{GtkItemFactoryCallback1}}, 2 if it is of type \code{\link{GtkItemFactoryCallback2}} }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
