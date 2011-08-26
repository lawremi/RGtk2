\alias{gtkTreeViewSetCursor}
\name{gtkTreeViewSetCursor}
\title{gtkTreeViewSetCursor}
\description{Sets the current keyboard focus to be at \code{path}, and selects it.  This is
useful when you want to focus the user's attention on a particular row.  If
\code{focus.column} is not \code{NULL}, then focus is given to the column specified by 
it. Additionally, if \code{focus.column} is specified, and \code{start.editing} is 
\code{TRUE}, then editing should be started in the specified cell.  
This function is often followed by \code{gtk.widget.grab.focus} (\code{tree.view}) 
in order to give keyboard focus to the widget.  Please note that editing 
can only happen when the widget is realized.}
\usage{gtkTreeViewSetCursor(object, path, focus.column = NULL, start.editing = FALSE)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeView}}}
\item{\verb{path}}{A \code{\link{GtkTreePath}}}
\item{\verb{focus.column}}{A \code{\link{GtkTreeViewColumn}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{start.editing}}{\code{TRUE} if the specified cell should start being edited.}
}
\details{If \code{path} is invalid for \code{model}, the current cursor (if any) will be unset
and the function will return without failing.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
