\alias{gtkTreeViewColumnSetResizable}
\name{gtkTreeViewColumnSetResizable}
\title{gtkTreeViewColumnSetResizable}
\description{If \code{resizable} is \code{TRUE}, then the user can explicitly resize the column by
grabbing the outer edge of the column button.  If resizable is \code{TRUE} and
sizing mode of the column is \code{GTK_TREE_VIEW_COLUMN_AUTOSIZE}, then the sizing
mode is changed to \code{GTK_TREE_VIEW_COLUMN_GROW_ONLY}.}
\usage{gtkTreeViewColumnSetResizable(object, resizable)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeViewColumn}}]  A \code{\link{GtkTreeViewColumn}}}
\item{\code{resizable}}{[logical]  \code{TRUE}, if the column can be resized}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
