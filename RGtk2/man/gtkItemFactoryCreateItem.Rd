\alias{gtkItemFactoryCreateItem}
\name{gtkItemFactoryCreateItem}
\title{gtkItemFactoryCreateItem}
\description{
Creates an item for \code{entry}.
\strong{WARNING: \code{gtk_item_factory_create_item} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryCreateItem(object, entry, callback.data = NULL, 
    callback.type)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkItemFactory}}}
\item{\verb{entry}}{the \code{\link{GtkItemFactoryEntry}} to create an item for}
\item{\verb{callback.data}}{data passed to the callback function of \code{entry}}
\item{\verb{callback.type}}{1 if the callback function of \code{entry} is of type
\code{\link{GtkItemFactoryCallback1}}, 2 if it is of type \code{\link{GtkItemFactoryCallback2}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
