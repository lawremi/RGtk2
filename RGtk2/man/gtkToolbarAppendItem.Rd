\alias{gtkToolbarAppendItem}
\name{gtkToolbarAppendItem}
\title{gtkToolbarAppendItem}
\description{
Inserts a new item into the toolbar. You must specify the position
in the toolbar where it will be inserted.
\strong{WARNING: \code{gtk_toolbar_append_item} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{gtkToolbarInsert}} instead.}
}
\usage{gtkToolbarAppendItem(object, text, tooltip.text, tooltip.private.text, 
    icon, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolbar}}.}
\item{\verb{text}}{give your toolbar button a label.}
\item{\verb{tooltip.text}}{a string that appears when the user holds the mouse over this item.}
\item{\verb{tooltip.private.text}}{use with \code{\link{GtkTipsQuery}}.}
\item{\verb{icon}}{a \code{\link{GtkWidget}} that should be used as the button's icon.}
\item{\verb{callback}}{the function to be executed when the button is pressed.}
\item{\verb{user.data}}{a pointer to any data you wish to be passed to the callback.}
}
\details{\code{callback} must be a pointer to a function taking a \code{\link{GtkWidget}} and a gpointer as
arguments. Use \code{gCallback()} to cast the function to \verb{GCallback}.}
\value{[\code{\link{GtkWidget}}] the new toolbar item as a \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
