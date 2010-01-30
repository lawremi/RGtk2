\alias{gtkItemFactoryGetWidgetByAction}
\name{gtkItemFactoryGetWidgetByAction}
\title{gtkItemFactoryGetWidgetByAction}
\description{
Obtains the widget which was constructed from the \verb{\link{GtkItemFactoryEntry}}
with the given \code{action}.
\strong{WARNING: \code{gtk_item_factory_get_widget_by_action} has been deprecated since version 2.4 and should not be used in newly-written code. }
}
\usage{gtkItemFactoryGetWidgetByAction(object, action)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkItemFactory}}]  a \verb{\link{GtkItemFactory}}}
\item{\verb{action}}{[numeric]  an action as specified in the \code{callback.action} field
  of \verb{\link{GtkItemFactoryEntry}}}
}
\details{If there are multiple items with the same action, the result is 
undefined.  }
\value{[\verb{\link{GtkWidget}}]  the widget which corresponds to the given action, or \code{NULL}
  if no widget was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
