\alias{gtkToolbarInsertStock}
\name{gtkToolbarInsertStock}
\title{gtkToolbarInsertStock}
\description{
Inserts a stock item at the specified position of the toolbar.  If
\code{stock.id} is not a known stock item ID, it's inserted verbatim,
except that underscores used to mark mnemonics are removed.
\strong{WARNING: \code{gtk_toolbar_insert_stock} is deprecated and should not be used in newly-written code.}
}
\usage{gtkToolbarInsertStock(object, stock.id, tooltip.text, tooltip.private.text, callback, user.data, position)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkToolbar}}]  A \verb{\link{GtkToolbar}}}
\item{\verb{stock.id}}{[character]  The id of the stock item you want to insert}
\item{\verb{tooltip.text}}{[char]  The text in the tooltip of the toolbar button}
\item{\verb{tooltip.private.text}}{[char]  The private text of the tooltip}
\item{\verb{callback}}{[GtkSignalFunc]  The callback called when the toolbar button is clicked.}
\item{\verb{user.data}}{[R object]  user data passed to callback}
\item{\verb{position}}{[integer]  The position the button shall be inserted at.
           -1 means at the end.}
}
\details{\code{callback} must be a pointer to a function taking a \verb{\link{GtkWidget}} and a gpointer as
arguments. Use the \code{gtkSignalFunc()} to cast the function to \verb{GtkSignalFunc}.  }
\value{[\verb{\link{GtkWidget}}]  the inserted widget}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
