\alias{gtkCellViewSetModel}
\name{gtkCellViewSetModel}
\title{gtkCellViewSetModel}
\description{Sets the model for \code{cell.view}.  If \code{cell.view} already has a model
set, it will remove it before setting the new model.  If \code{model} is 
\code{NULL}, then it will unset the old model.}
\usage{gtkCellViewSetModel(object, model = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCellView}}]  a \code{\link{GtkCellView}}}
\item{\code{model}}{[\code{\link{GtkTreeModel}}]  a \code{\link{GtkTreeModel}}}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
