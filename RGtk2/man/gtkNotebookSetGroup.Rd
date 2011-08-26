\alias{gtkNotebookSetGroup}
\name{gtkNotebookSetGroup}
\title{gtkNotebookSetGroup}
\description{Sets a group identificator pointer for \code{notebook}, notebooks sharing
the same group identificator pointer will be able to exchange tabs
via drag and drop. A notebook with a \code{NULL} group identificator will
not be able to exchange tabs with any other notebook.}
\usage{gtkNotebookSetGroup(object, group)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{group}}{a pointer to identify the notebook group, or \code{NULL} to unset it. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
