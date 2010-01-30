\alias{gtkToolbarPrependItem}
\name{gtkToolbarPrependItem}
\title{gtkToolbarPrependItem}
\description{
Adds a new button to the beginning (top or left edges) of the given toolbar.
\strong{WARNING: \code{gtk_toolbar_prepend_item} is deprecated and should not be used in newly-written code.}
}
\usage{gtkToolbarPrependItem(object, text, tooltip.text, tooltip.private.text, icon, callback, user.data)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkToolbar}}]  a \verb{\link{GtkToolbar}}.}
\item{\verb{text}}{[char]  give your toolbar button a label.}
\item{\verb{tooltip.text}}{[char]  a string that appears when the user holds the mouse over this item.}
\item{\verb{tooltip.private.text}}{[char]  use with \verb{\link{GtkTipsQuery}}.}
\item{\verb{icon}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}} that should be used as the button's icon.}
\item{\verb{callback}}{[GtkSignalFunc]  the function to be executed when the button is pressed.}
\item{\verb{user.data}}{[R object]  a pointer to any data you wish to be passed to the callback.}
}
\details{\code{callback} must be a pointer to a function taking a \verb{\link{GtkWidget}} and a gpointer as
arguments. Use the \code{gtkSignalFunc()} to cast the function to \verb{GtkSignalFunc}.  }
\value{[\verb{\link{GtkWidget}}]  the new toolbar item as a \verb{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
