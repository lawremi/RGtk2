\alias{gtkCellLayoutSetAttributes}
\name{gtkCellLayoutSetAttributes}
\title{gtkCellLayoutSetAttributes}
\description{Sets the attributes in list as the attributes of \code{cell.layout}. The
attributes should be in attribute/column order, as in
\code{\link{gtkCellLayoutAddAttribute}}. All existing attributes are removed, and
replaced with the new attributes.}
\usage{gtkCellLayoutSetAttributes(object, cell, ...)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCellLayout}}]  A \code{\link{GtkCellLayout}}.}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  A \code{\link{GtkCellRenderer}}.}
\item{\code{...}}{ A list of attributes.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
