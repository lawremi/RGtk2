\alias{gtkItemFactoryGetWidgetByAction}
\name{gtkItemFactoryGetWidgetByAction}
\title{gtkItemFactoryGetWidgetByAction}
\description{
Obtains the widget which was constructed from the \code{\link{GtkItemFactoryEntry}}
with the given \code{action}.
\strong{WARNING: \code{gtk_item_factory_get_widget_by_action} is deprecated and should not be used in newly-written code.  
Obtains the widget which was constructed from the \code{\link{GtkItemFactoryEntry}}
with the given \code{action}.
  
If there are multiple items with the same action, the result is 
undefined.  }
}
\usage{gtkItemFactoryGetWidgetByAction(object, action)}
\arguments{
\item{\code{object}}{[\code{\link{GtkItemFactory}}]  a \code{\link{GtkItemFactory}}}
\item{\code{action}}{[numeric]  an action as specified in the \code{callback.action} field
  of \code{\link{GtkItemFactoryEntry}}}
}
\details{If there are multiple items with the same action, the result is 
undefined.  }
\value{[\code{\link{GtkWidget}}]  the widget which corresponds to the given action, or \code{NULL}
  if no widget was found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
