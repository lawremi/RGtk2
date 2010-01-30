\alias{gtkToolItemGetProxyMenuItem}
\name{gtkToolItemGetProxyMenuItem}
\title{gtkToolItemGetProxyMenuItem}
\description{If \code{menu.item.id} matches the string passed to
\code{\link{gtkToolItemSetProxyMenuItem}} return the corresponding \verb{\link{GtkMenuItem}}.}
\usage{gtkToolItemGetProxyMenuItem(object, menu.item.id)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkToolItem}}]  a \code{\link{gtkToolItem}} }
\item{\verb{menu.item.id}}{[character]  a string used to identify the menu item}
}
\details{Custom subclasses of \verb{\link{GtkToolItem}} should use this function to update
their menu item when the \verb{\link{GtkToolItem}} changes. That the
\code{menu.item.id}s must match ensures that a \verb{\link{GtkToolItem}} will not
inadvertently change a menu item that they did not create.  

  Since  2.4}
\value{[\verb{\link{GtkWidget}}]  The \verb{\link{GtkMenuItem}} passed to
\code{\link{gtkToolItemSetProxyMenuItem}}, if the \code{menu.item.id}s match.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
