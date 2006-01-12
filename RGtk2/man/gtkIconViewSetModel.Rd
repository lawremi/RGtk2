\alias{gtkIconViewSetModel}
\name{gtkIconViewSetModel}
\title{gtkIconViewSetModel}
\description{Sets the model for a \code{\link{GtkIconView}}.  
If the \code{icon.view} already has a model set, it will remove 
it before setting the new model.  If \code{model} is \code{NULL}, then
it will unset the old model.}
\usage{gtkIconViewSetModel(object, model = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconView}}]  A \code{\link{GtkIconView}}.}
\item{\code{model}}{[\code{\link{GtkTreeModel}}]  The model.}
}
\details{  Since  2.6 }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
