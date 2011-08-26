\alias{gtkTreeViewSetModel}
\name{gtkTreeViewSetModel}
\title{gtkTreeViewSetModel}
\description{Sets the model for a \code{\link{GtkTreeView}}.  If the \code{tree.view} already has a model
set, it will remove it before setting the new model.  If \code{model} is \code{NULL},
then it will unset the old model.}
\usage{gtkTreeViewSetModel(object, model = NULL)}
\arguments{
\item{\verb{object}}{A \verb{GtkTreeNode}.}
\item{\verb{model}}{The model. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
