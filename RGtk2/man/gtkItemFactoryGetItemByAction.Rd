\alias{gtkItemFactoryGetItemByAction}
\name{gtkItemFactoryGetItemByAction}
\title{gtkItemFactoryGetItemByAction}
\description{
Obtains the menu item which was constructed from the first 
\verb{\link{GtkItemFactoryEntry}} with the given \code{action}.
\strong{WARNING: \code{gtk_item_factory_get_item_by_action} has been deprecated since version 2.4 and should not be used in newly-written code. }
}
\usage{gtkItemFactoryGetItemByAction(object, action)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkItemFactory}}]  a \verb{\link{GtkItemFactory}}}
\item{\verb{action}}{[numeric]  an action as specified in the \code{callback.action} field
  of \verb{\link{GtkItemFactoryEntry}}}
}
\value{[\verb{\link{GtkWidget}}]  the menu item which corresponds to the given action, or \code{NULL}
  if no menu item was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
