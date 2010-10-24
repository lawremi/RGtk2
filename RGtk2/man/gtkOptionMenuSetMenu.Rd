\alias{gtkOptionMenuSetMenu}
\name{gtkOptionMenuSetMenu}
\title{gtkOptionMenuSetMenu}
\description{
Provides the \code{\link{GtkMenu}} that is popped up to allow the user to choose
a new value.  You should provide a simple menu avoiding the
use of tearoff menu items, submenus, and accelerators.
\strong{WARNING: \code{gtk_option_menu_set_menu} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.}
}
\usage{gtkOptionMenuSetMenu(object, menu)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkOptionMenu}}.}
\item{\verb{menu}}{the \code{\link{GtkMenu}} to associate with the \code{\link{GtkOptionMenu}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
