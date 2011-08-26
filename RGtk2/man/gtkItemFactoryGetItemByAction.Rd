\alias{gtkItemFactoryGetItemByAction}
\name{gtkItemFactoryGetItemByAction}
\title{gtkItemFactoryGetItemByAction}
\description{
Obtains the menu item which was constructed from the first 
\code{\link{GtkItemFactoryEntry}} with the given \code{action}.
\strong{WARNING: \code{gtk_item_factory_get_item_by_action} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkUIManager}} instead.}
}
\usage{gtkItemFactoryGetItemByAction(object, action)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkItemFactory}}}
\item{\verb{action}}{an action as specified in the \code{callback.action} field
of \code{\link{GtkItemFactoryEntry}}}
}
\value{[\code{\link{GtkWidget}}] the menu item which corresponds to the given action, or \code{NULL}
if no menu item was found. \emph{[  \acronym{allow-none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
