\alias{gtkMenuGetActive}
\name{gtkMenuGetActive}
\title{gtkMenuGetActive}
\description{Returns the selected menu item from the menu.  This is used by the 
\verb{\link{GtkOptionMenu}}.}
\usage{gtkMenuGetActive(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkMenu}}] a \verb{\link{GtkMenu}}.}}
\value{[\verb{\link{GtkWidget}}] the \verb{\link{GtkMenuItem}} that was last selected in the menu.  If a 
selection has not yet been made, the first menu item is selected.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
