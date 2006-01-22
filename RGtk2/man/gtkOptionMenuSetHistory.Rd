\alias{gtkOptionMenuSetHistory}
\name{gtkOptionMenuSetHistory}
\title{gtkOptionMenuSetHistory}
\description{
Selects the menu item specified by \code{index.} making it the newly
selected value for the option menu.
\strong{WARNING: \code{gtk_option_menu_set_history} is deprecated and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.  
Selects the menu item specified by \code{index.} making it the newly
selected value for the option menu.}
}
\usage{gtkOptionMenuSetHistory(object, index)}
\arguments{
\item{\code{object}}{[\code{\link{GtkOptionMenu}}] a \code{\link{GtkOptionMenu}}.}
\item{\code{index}}{[numeric] the index of the menu item to select.  Index values are from 0 to n-1.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
