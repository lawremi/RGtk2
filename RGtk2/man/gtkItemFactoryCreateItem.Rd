\alias{gtkItemFactoryCreateItem}
\name{gtkItemFactoryCreateItem}
\title{gtkItemFactoryCreateItem}
\description{
Creates an item for \code{entry}.
\strong{WARNING: \code{gtk_item_factory_create_item} has been deprecated since version 2.4 and should not be used in newly-written code. }
}
\usage{gtkItemFactoryCreateItem(object, entry, callback.data = NULL, callback.type)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkItemFactory}}]  a \verb{\link{GtkItemFactory}}}
\item{\verb{entry}}{[\verb{\link{GtkItemFactoryEntry}}]  the \verb{\link{GtkItemFactoryEntry}} to create an item for}
\item{\verb{callback.data}}{[R object]  data passed to the callback function of \code{entry}}
\item{\verb{callback.type}}{[numeric]  1 if the callback function of \code{entry} is of type
   \verb{\link{GtkItemFactoryCallback1}}, 2 if it is of type \verb{\link{GtkItemFactoryCallback2}} }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
