\alias{gtkCellViewSetDisplayedRow}
\name{gtkCellViewSetDisplayedRow}
\title{gtkCellViewSetDisplayedRow}
\description{Sets the row of the model that is currently displayed
by the \code{\link{GtkCellView}}. If the path is unset, then the
contents of the cellview "stick" at their last value;
this is not normally a desired result, but may be
a needed intermediate state if say, the model for
the \code{\link{GtkCellView}} becomes temporarily empty.}
\usage{gtkCellViewSetDisplayedRow(object, path = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCellView}}]  a \code{\link{GtkCellView}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  a \code{\link{GtkTreePath}} or \code{NULL} to unset.}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
