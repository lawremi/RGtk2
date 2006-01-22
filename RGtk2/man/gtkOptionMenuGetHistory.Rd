\alias{gtkOptionMenuGetHistory}
\name{gtkOptionMenuGetHistory}
\title{gtkOptionMenuGetHistory}
\description{
Retrieves the index of the currently selected menu item. The menu
items are numbered from top to bottom, starting with 0.
\strong{WARNING: \code{gtk_option_menu_get_history} is deprecated and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.  
Retrieves the index of the currently selected menu item. The menu
items are numbered from top to bottom, starting with 0.  }
}
\usage{gtkOptionMenuGetHistory(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkOptionMenu}}]  a \code{\link{GtkOptionMenu}}}}
\value{[integer]  index of the selected menu item, or -1 if there are no menu items}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
