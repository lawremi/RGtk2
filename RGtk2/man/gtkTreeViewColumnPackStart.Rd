\alias{gtkTreeViewColumnPackStart}
\name{gtkTreeViewColumnPackStart}
\title{gtkTreeViewColumnPackStart}
\description{Packs the \code{cell} into the beginning of the column. If \code{expand} is \code{FALSE}, then
the \code{cell} is allocated no more space than it needs. Any unused space is divided
evenly between cells for which \code{expand} is \code{TRUE}.}
\usage{gtkTreeViewColumnPackStart(object, cell, expand = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeViewColumn}}]  A \code{\link{GtkTreeViewColumn}}.}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  The \code{\link{GtkCellRenderer}}. }
\item{\code{expand}}{[logical]  \code{TRUE} if \code{cell} is to be given extra space allocated to \code{tree.column}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
