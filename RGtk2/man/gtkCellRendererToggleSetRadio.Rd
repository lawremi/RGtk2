\alias{gtkCellRendererToggleSetRadio}
\name{gtkCellRendererToggleSetRadio}
\title{gtkCellRendererToggleSetRadio}
\description{If \code{radio} is \code{TRUE}, the cell renderer renders a radio toggle
(i.e. a toggle in a group of mutually-exclusive toggles).
If \code{FALSE}, it renders a check toggle (a standalone boolean option).
This can be set globally for the cell renderer, or changed just
before rendering each cell in the model (for \verb{\link{GtkTreeView}}, you set
up a per-row setting using \verb{\link{GtkTreeViewColumn}} to associate model
columns with cell renderer properties).}
\usage{gtkCellRendererToggleSetRadio(object, radio)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCellRendererToggle}}]  a \verb{\link{GtkCellRendererToggle}}}
\item{\verb{radio}}{[logical] \code{TRUE} to make the toggle look like a radio button}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
