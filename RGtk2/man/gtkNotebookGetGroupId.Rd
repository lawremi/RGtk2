\alias{gtkNotebookGetGroupId}
\name{gtkNotebookGetGroupId}
\title{gtkNotebookGetGroupId}
\description{
Gets the current group identificator for \code{notebook}.
\strong{WARNING: \code{gtk_notebook_get_group_id} has been deprecated since version 2.12 and should not be used in newly-written code. use \code{\link{gtkNotebookGetGroup}} instead.}
}
\usage{gtkNotebookGetGroupId(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkNotebook}}}}
\details{Since 2.10}
\value{[integer] the group identificator, or -1 if none is set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
