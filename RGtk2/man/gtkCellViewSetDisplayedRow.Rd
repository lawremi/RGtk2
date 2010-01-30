\alias{gtkCellViewSetDisplayedRow}
\name{gtkCellViewSetDisplayedRow}
\title{gtkCellViewSetDisplayedRow}
\description{Sets the row of the model that is currently displayed
by the \verb{\link{GtkCellView}}. If the path is unset, then the
contents of the cellview "stick" at their last value;
this is not normally a desired result, but may be
a needed intermediate state if say, the model for
the \verb{\link{GtkCellView}} becomes temporarily empty.}
\usage{gtkCellViewSetDisplayedRow(object, path = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCellView}}]  a \verb{\link{GtkCellView}}}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  a \verb{\link{GtkTreePath}} or \code{NULL} to unset.}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
