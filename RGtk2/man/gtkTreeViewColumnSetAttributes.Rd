\alias{gtkTreeViewColumnSetAttributes}
\name{gtkTreeViewColumnSetAttributes}
\title{gtkTreeViewColumnSetAttributes}
\description{Sets the attributes in the list as the attributes of \code{tree.column}.
The attributes should be in attribute/column order, as in
\code{\link{gtkTreeViewColumnAddAttribute}}. All existing attributes
are removed, and replaced with the new attributes.}
\usage{gtkTreeViewColumnSetAttributes(object, cell.renderer, ...)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeViewColumn}}]  A \verb{\link{GtkTreeViewColumn}}.}
\item{\verb{cell.renderer}}{[\verb{\link{GtkCellRenderer}}]  the \verb{\link{GtkCellRenderer}} we're setting the attributes of}
\item{\verb{...}}{ A list of attributes.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
