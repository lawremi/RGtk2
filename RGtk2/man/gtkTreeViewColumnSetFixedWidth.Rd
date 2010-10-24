\alias{gtkTreeViewColumnSetFixedWidth}
\name{gtkTreeViewColumnSetFixedWidth}
\title{gtkTreeViewColumnSetFixedWidth}
\description{Sets the size of the column in pixels.  This is meaningful only if the sizing
type is \verb{GTK_TREE_VIEW_COLUMN_FIXED}.  The size of the column is clamped to
the min/max width for the column.  Please note that the min/max width of the
column doesn't actually affect the "fixed_width" property of the widget, just
the actual size when displayed.}
\usage{gtkTreeViewColumnSetFixedWidth(object, fixed.width)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeViewColumn}}.}
\item{\verb{fixed.width}}{The size to set \code{tree.column} to. Must be greater than 0.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
