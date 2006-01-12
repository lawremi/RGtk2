\alias{gtkCellLayoutAddAttribute}
\name{gtkCellLayoutAddAttribute}
\title{gtkCellLayoutAddAttribute}
\description{Adds an attribute mapping to the list in \code{cell.layout}. The \code{column} is the
column of the model to get a value from, and the \code{attribute} is the
parameter on \code{cell} to be set from the value. So for example if column 2
of the model contains strings, you could have the "text" attribute of a
\code{\link{GtkCellRendererText}} get its values from column 2.}
\usage{gtkCellLayoutAddAttribute(object, cell, attribute, column)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCellLayout}}]  A \code{\link{GtkCellLayout}}.}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  A \code{\link{GtkCellRenderer}}.}
\item{\code{attribute}}{[character]  An attribute on the renderer.}
\item{\code{column}}{[integer]  The column position on the model to get the attribute from.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
