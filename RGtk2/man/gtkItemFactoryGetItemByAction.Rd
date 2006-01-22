\alias{gtkItemFactoryGetItemByAction}
\name{gtkItemFactoryGetItemByAction}
\title{gtkItemFactoryGetItemByAction}
\description{
Obtains the menu item which was constructed from the first 
\code{\link{GtkItemFactoryEntry}} with the given \code{action}.
\strong{WARNING: \code{gtk_item_factory_get_item_by_action} is deprecated and should not be used in newly-written code.  
Obtains the menu item which was constructed from the first 
\code{\link{GtkItemFactoryEntry}} with the given \code{action}.  }
}
\usage{gtkItemFactoryGetItemByAction(object, action)}
\arguments{
\item{\code{object}}{[\code{\link{GtkItemFactory}}]  a \code{\link{GtkItemFactory}}}
\item{\code{action}}{[numeric]  an action as specified in the \code{callback.action} field
  of \code{\link{GtkItemFactoryEntry}}}
}
\value{[\code{\link{GtkWidget}}]  the menu item which corresponds to the given action, or \code{NULL}
  if no menu item was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
