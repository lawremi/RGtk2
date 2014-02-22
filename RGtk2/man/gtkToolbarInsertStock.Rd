\alias{gtkToolbarInsertStock}
\name{gtkToolbarInsertStock}
\title{gtkToolbarInsertStock}
\description{
Inserts a stock item at the specified position of the toolbar.  If
\code{stock.id} is not a known stock item ID, it's inserted verbatim,
except that underscores used to mark mnemonics are removed.
\strong{WARNING: \code{gtk_toolbar_insert_stock} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{gtkToolbarInsert}} instead.}
}
\usage{gtkToolbarInsertStock(object, stock.id, tooltip.text, tooltip.private.text, 
    callback, user.data, position)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkToolbar}}}
\item{\verb{stock.id}}{The id of the stock item you want to insert}
\item{\verb{tooltip.text}}{The text in the tooltip of the toolbar button}
\item{\verb{tooltip.private.text}}{The private text of the tooltip}
\item{\verb{callback}}{The callback called when the toolbar button is clicked.}
\item{\verb{user.data}}{user data passed to callback}
\item{\verb{position}}{The position the button shall be inserted at.
-1 means at the end.}
}
\details{\code{callback} must be a pointer to a function taking a \code{\link{GtkWidget}} and a gpointer as
arguments. Use \code{gCallback()} to cast the function to \verb{GCallback}.}
\value{[\code{\link{GtkWidget}}] the inserted widget}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
