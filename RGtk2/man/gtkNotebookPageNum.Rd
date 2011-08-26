\alias{gtkNotebookPageNum}
\name{gtkNotebookPageNum}
\title{gtkNotebookPageNum}
\description{Finds the index of the page which contains the given child
widget.}
\usage{gtkNotebookPageNum(object, child)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{a \code{\link{GtkWidget}}}
}
\value{[integer] the index of the page containing \code{child}, or
-1 if \code{child} is not in the notebook.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
