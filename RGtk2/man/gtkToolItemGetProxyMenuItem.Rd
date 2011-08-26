\alias{gtkToolItemGetProxyMenuItem}
\name{gtkToolItemGetProxyMenuItem}
\title{gtkToolItemGetProxyMenuItem}
\description{If \code{menu.item.id} matches the string passed to
\code{\link{gtkToolItemSetProxyMenuItem}} return the corresponding \code{\link{GtkMenuItem}}.}
\usage{gtkToolItemGetProxyMenuItem(object, menu.item.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolItem}}}
\item{\verb{menu.item.id}}{a string used to identify the menu item}
}
\details{Custom subclasses of \code{\link{GtkToolItem}} should use this function to update
their menu item when the \code{\link{GtkToolItem}} changes. That the
\code{menu.item.id}s must match ensures that a \code{\link{GtkToolItem}} will not
inadvertently change a menu item that they did not create.
  Since 2.4}
\value{[\code{\link{GtkWidget}}] The \code{\link{GtkMenuItem}} passed to
\code{\link{gtkToolItemSetProxyMenuItem}}, if the \code{menu.item.id}s match.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
