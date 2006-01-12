\alias{gtkNotebookPageNum}
\name{gtkNotebookPageNum}
\title{gtkNotebookPageNum}
\description{Finds the index of the page which contains the given child
widget.}
\usage{gtkNotebookPageNum(object, child)}
\arguments{
\item{\code{object}}{[\code{\link{GtkNotebook}}]  a \code{\link{GtkNotebook}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
}
\value{[integer]  the index of the page containing \code{child}, or
  -1 if \code{child} is not in the notebook.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
