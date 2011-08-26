\alias{gtkEntryCompletionSetModel}
\name{gtkEntryCompletionSetModel}
\title{gtkEntryCompletionSetModel}
\description{Sets the model for a \code{\link{GtkEntryCompletion}}. If \code{completion} already has
a model set, it will remove it before setting the new model.
If model is \code{NULL}, then it will unset the model.}
\usage{gtkEntryCompletionSetModel(object, model = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkEntryCompletion}}.}
\item{\verb{model}}{The \code{\link{GtkTreeModel}}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
