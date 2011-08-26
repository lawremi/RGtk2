\alias{gtkMenuGetActive}
\name{gtkMenuGetActive}
\title{gtkMenuGetActive}
\description{Returns the selected menu item from the menu.  This is used by the
\code{\link{GtkOptionMenu}}.}
\usage{gtkMenuGetActive(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkMenu}}.}}
\value{[\code{\link{GtkWidget}}] the \code{\link{GtkMenuItem}} that was last selected in the menu.  If a
selection has not yet been made, the first menu item is selected.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
