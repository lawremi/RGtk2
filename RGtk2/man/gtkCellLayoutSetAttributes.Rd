\alias{gtkCellLayoutSetAttributes}
\name{gtkCellLayoutSetAttributes}
\title{gtkCellLayoutSetAttributes}
\description{Sets the attributes in list as the attributes of \code{cell.layout}. The
attributes should be in attribute/column order, as in
\code{\link{gtkCellLayoutAddAttribute}}. All existing attributes are removed, and
replaced with the new attributes.}
\usage{gtkCellLayoutSetAttributes(object, cell, ...)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCellLayout}}]  A \verb{\link{GtkCellLayout}}.}
\item{\verb{cell}}{[\verb{\link{GtkCellRenderer}}]  A \verb{\link{GtkCellRenderer}}.}
\item{\verb{...}}{ A list of attributes.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
