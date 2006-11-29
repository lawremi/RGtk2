\alias{gtkWidgetGetAction}
\name{gtkWidgetGetAction}
\title{gtkWidgetGetAction}
\description{Returns the \code{\link{GtkAction}} that \code{widget} is a proxy for. 
See also \code{\link{gtkActionGetProxies}}.}
\usage{gtkWidgetGetAction(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}}
\details{  Since  2.10}
\value{[\code{\link{GtkAction}}]  the action that a widget is a proxy for, or
 \code{NULL}, if it is not attached to an action.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
