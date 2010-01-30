\alias{gtkTreeViewColumnAddAttribute}
\name{gtkTreeViewColumnAddAttribute}
\title{gtkTreeViewColumnAddAttribute}
\description{Adds an attribute mapping to the list in \code{tree.column}.  The \code{column} is the
column of the model to get a value from, and the \code{attribute} is the
parameter on \code{cell.renderer} to be set from the value. So for example
if column 2 of the model contains strings, you could have the
"text" attribute of a \verb{\link{GtkCellRendererText}} get its values from
column 2.}
\usage{gtkTreeViewColumnAddAttribute(object, cell.renderer, attribute, column)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeViewColumn}}]  A \verb{\link{GtkTreeViewColumn}}.}
\item{\verb{cell.renderer}}{[\verb{\link{GtkCellRenderer}}]  the \verb{\link{GtkCellRenderer}} to set attributes on}
\item{\verb{attribute}}{[character]  An attribute on the renderer}
\item{\verb{column}}{[integer]  The column position on the model to get the attribute from.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
