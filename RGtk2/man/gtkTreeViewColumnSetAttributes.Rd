\alias{gtkTreeViewColumnSetAttributes}
\name{gtkTreeViewColumnSetAttributes}
\title{gtkTreeViewColumnSetAttributes}
\description{Sets the attributes in the list as the attributes of \code{tree.column}.
The attributes should be in attribute/column order, as in
\code{\link{gtkTreeViewColumnAddAttribute}}. All existing attributes
are removed, and replaced with the new attributes.}
\usage{gtkTreeViewColumnSetAttributes(object, cell.renderer, ...)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeViewColumn}}]  A \code{\link{GtkTreeViewColumn}}.}
\item{\code{cell.renderer}}{[\code{\link{GtkCellRenderer}}]  the \code{\link{GtkCellRenderer}} we're setting the attributes of}
\item{\code{...}}{ A list of attributes.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
