\alias{gtkToolbarInsertItem}
\name{gtkToolbarInsertItem}
\title{gtkToolbarInsertItem}
\description{
Inserts a new item into the toolbar. You must specify the position in the
toolbar where it will be inserted.
\strong{WARNING: \code{gtk_toolbar_insert_item} is deprecated and should not be used in newly-written code.}
}
\usage{gtkToolbarInsertItem(object, text, tooltip.text, tooltip.private.text, icon, callback, user.data, position)}
\arguments{
\item{\code{object}}{[\code{\link{GtkToolbar}}]  a \code{\link{GtkToolbar}}.}
\item{\code{text}}{[char]  give your toolbar button a label.}
\item{\code{tooltip.text}}{[char]  a string that appears when the user holds the mouse over this item.}
\item{\code{tooltip.private.text}}{[char]  use with \code{\link{GtkTipsQuery}}.}
\item{\code{icon}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}} that should be used as the button's icon.}
\item{\code{callback}}{[GtkSignalFunc]  the function to be executed when the button is pressed.}
\item{\code{user.data}}{[R object]  a pointer to any data you wish to be passed to the callback.}
\item{\code{position}}{[integer]  the number of widgets to insert this item after.}
}
\details{\code{callback} must be a pointer to a function taking a \code{\link{GtkWidget}} and a gpointer as
arguments. Use the \code{gtkSignalFunc()} to cast the function to \code{GtkSignalFunc}.  }
\value{[\code{\link{GtkWidget}}]  the new toolbar item as a \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
