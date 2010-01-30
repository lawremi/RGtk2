\alias{gtkWidgetGetAction}
\name{gtkWidgetGetAction}
\title{gtkWidgetGetAction}
\description{Returns the \verb{\link{GtkAction}} that \code{widget} is a proxy for. 
See also \code{\link{gtkActionGetProxies}}.}
\usage{gtkWidgetGetAction(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}}
\details{  Since  2.10}
\value{[\verb{\link{GtkAction}}]  the action that a widget is a proxy for, or
 \code{NULL}, if it is not attached to an action.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
