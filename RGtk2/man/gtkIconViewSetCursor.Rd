\alias{gtkIconViewSetCursor}
\name{gtkIconViewSetCursor}
\title{gtkIconViewSetCursor}
\description{Sets the current keyboard focus to be at \code{path}, and selects it.  This is
useful when you want to focus the user's attention on a particular item.
If \code{cell} is not \code{NULL}, then focus is given to the cell specified by 
it. Additionally, if \code{start.editing} is \code{TRUE}, then editing should be 
started in the specified cell.  }
\usage{gtkIconViewSetCursor(object, path, cell, start.editing)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkIconView}}}
\item{\verb{path}}{A \code{\link{GtkTreePath}}}
\item{\verb{cell}}{One of the cell renderers of \code{icon.view}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{start.editing}}{\code{TRUE} if the specified cell should start being edited.}
}
\details{This function is often followed by \code{gtk_widget_grab_focus 
(icon_view)} in order to give keyboard focus to the widget.  
Please note that editing can only happen when the widget is realized.
  Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
