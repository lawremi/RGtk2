\alias{gtkToolButtonSetIconWidget}
\name{gtkToolButtonSetIconWidget}
\title{gtkToolButtonSetIconWidget}
\description{Sets \code{icon} as the widget used as icon on \code{button}. If \code{icon.widget} is
\code{NULL} the icon is determined by the "stock\_id" property. If the
"stock\_id" property is also \code{NULL}, \code{button} will not have an icon.}
\usage{gtkToolButtonSetIconWidget(object, icon.widget = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkToolButton}}]  a \code{\link{GtkToolButton}}}
\item{\code{icon.widget}}{[\code{\link{GtkWidget}}]  the widget used as icon, or \code{NULL}}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
