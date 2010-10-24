\alias{gtkTreeViewColumnCellIsVisible}
\name{gtkTreeViewColumnCellIsVisible}
\title{gtkTreeViewColumnCellIsVisible}
\description{Returns \code{TRUE} if any of the cells packed into the \code{tree.column} are visible.
For this to be meaningful, you must first initialize the cells with
\code{\link{gtkTreeViewColumnCellSetCellData}}}
\usage{gtkTreeViewColumnCellIsVisible(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkTreeViewColumn}}}}
\value{[logical] \code{TRUE}, if any of the cells packed into the \code{tree.column} are currently visible}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
