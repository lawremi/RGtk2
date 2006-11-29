\alias{gtkNotebookSetGroupId}
\name{gtkNotebookSetGroupId}
\title{gtkNotebookSetGroupId}
\description{Sets an group identificator for \code{notebook}, notebooks sharing
the same group identificator will be able to exchange tabs
via drag and drop. A notebook with group identificator -1 will
not be able to exchange tabs with any other notebook.}
\usage{gtkNotebookSetGroupId(object, group.id)}
\arguments{
\item{\code{object}}{[\code{\link{GtkNotebook}}]  a \code{\link{GtkNotebook}}}
\item{\code{group.id}}{[integer]  a group identificator, or -1 to unset it}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
