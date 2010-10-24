\alias{gtkNotebookSetGroupId}
\name{gtkNotebookSetGroupId}
\title{gtkNotebookSetGroupId}
\description{
Sets an group identificator for \code{notebook}, notebooks sharing
the same group identificator will be able to exchange tabs
via drag and drop. A notebook with group identificator -1 will
not be able to exchange tabs with any other notebook.
\strong{WARNING: \code{gtk_notebook_set_group_id} has been deprecated since version 2.12 and should not be used in newly-written code. use \code{\link{gtkNotebookSetGroup}} instead.}
}
\usage{gtkNotebookSetGroupId(object, group.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{group.id}}{a group identificator, or -1 to unset it}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
