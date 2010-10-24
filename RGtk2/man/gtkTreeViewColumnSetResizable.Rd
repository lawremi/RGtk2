\alias{gtkTreeViewColumnSetResizable}
\name{gtkTreeViewColumnSetResizable}
\title{gtkTreeViewColumnSetResizable}
\description{If \code{resizable} is \code{TRUE}, then the user can explicitly resize the column by
grabbing the outer edge of the column button.  If resizable is \code{TRUE} and
sizing mode of the column is \verb{GTK_TREE_VIEW_COLUMN_AUTOSIZE}, then the sizing
mode is changed to \verb{GTK_TREE_VIEW_COLUMN_GROW_ONLY}.}
\usage{gtkTreeViewColumnSetResizable(object, resizable)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeViewColumn}}}
\item{\verb{resizable}}{\code{TRUE}, if the column can be resized}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
