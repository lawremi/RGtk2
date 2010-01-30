\alias{gtkTreeViewSetCursorOnCell}
\name{gtkTreeViewSetCursorOnCell}
\title{gtkTreeViewSetCursorOnCell}
\description{Sets the current keyboard focus to be at \code{path}, and selects it.  This is
useful when you want to focus the user's attention on a particular row.  If
\code{focus.column} is not \code{NULL}, then focus is given to the column specified by
it. If \code{focus.column} and \code{focus.cell} are not \code{NULL}, and \code{focus.column}
contains 2 or more editable or activatable cells, then focus is given to
the cell specified by \code{focus.cell}. Additionally, if \code{focus.column} is
specified, and \code{start.editing} is \code{TRUE}, then editing should be started in
the specified cell.  This function is often followed by
\code{gtk.widget.grab.focus} (\code{tree.view}) in order to give keyboard focus to the
widget.  Please note that editing can only happen when the widget is
realized.}
\usage{gtkTreeViewSetCursorOnCell(object, path, focus.column = NULL, focus.cell = NULL, start.editing = FALSE)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  A \verb{\link{GtkTreeView}}}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  A \verb{\link{GtkTreePath}}}
\item{\verb{focus.column}}{[\verb{\link{GtkTreeViewColumn}}]  A \verb{\link{GtkTreeViewColumn}}, or \code{NULL}}
\item{\verb{focus.cell}}{[\verb{\link{GtkCellRenderer}}]  A \verb{\link{GtkCellRenderer}}, or \code{NULL}}
\item{\verb{start.editing}}{[logical] \code{TRUE} if the specified cell should start being edited.}
}
\details{  Since  2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
