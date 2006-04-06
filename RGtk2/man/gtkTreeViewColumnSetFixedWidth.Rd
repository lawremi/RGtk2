\alias{gtkTreeViewColumnSetFixedWidth}
\name{gtkTreeViewColumnSetFixedWidth}
\title{gtkTreeViewColumnSetFixedWidth}
\description{Sets the size of the column in pixels.  This is meaningful only if the sizing
type is \code{GTK_TREE_VIEW_COLUMN_FIXED}.  The size of the column is clamped to
the min/max width for the column.  Please note that the min/max width of the
column doesn't actually affect the "fixed\_width" property of the widget, just
the actual size when displayed.}
\usage{gtkTreeViewColumnSetFixedWidth(object, fixed.width)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeViewColumn}}]  A \code{\link{GtkTreeViewColumn}}.}
\item{\code{fixed.width}}{[integer]  The size to set \code{tree.column} to. Must be greater than 0.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
