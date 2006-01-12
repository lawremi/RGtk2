\alias{gtkEntryCompletionSetModel}
\name{gtkEntryCompletionSetModel}
\title{gtkEntryCompletionSetModel}
\description{Sets the model for a \code{\link{GtkEntryCompletion}}. If \code{completion} already has
a model set, it will remove it before setting the new model.
If model is \code{NULL}, then it will unset the model.}
\usage{gtkEntryCompletionSetModel(object, model = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkEntryCompletion}}]  A \code{\link{GtkEntryCompletion}}.}
\item{\code{model}}{[\code{\link{GtkTreeModel}}]  The \code{\link{GtkTreeModel}}.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
