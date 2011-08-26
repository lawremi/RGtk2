\alias{gtkWidgetGetAction}
\name{gtkWidgetGetAction}
\title{gtkWidgetGetAction}
\description{
Returns the \code{\link{GtkAction}} that \code{widget} is a proxy for. 
See also \code{\link{gtkActionGetProxies}}.
\strong{WARNING: \code{gtk_widget_get_action} has been deprecated since version 2.16 and should not be used in newly-written code. Use \code{\link{gtkActivatableGetRelatedAction}} instead.}
}
\usage{gtkWidgetGetAction(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{Since 2.10}
\value{[\code{\link{GtkAction}}] the action that a widget is a proxy for, or
\code{NULL}, if it is not attached to an action.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
