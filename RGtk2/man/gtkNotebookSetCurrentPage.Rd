\alias{gtkNotebookSetCurrentPage}
\name{gtkNotebookSetCurrentPage}
\title{gtkNotebookSetCurrentPage}
\description{Switches to the page number \code{page.num}.}
\usage{gtkNotebookSetCurrentPage(object, page.num)}
\arguments{
\item{\code{object}}{[\code{\link{GtkNotebook}}]  a \code{\link{GtkNotebook}}}
\item{\code{page.num}}{[integer]  index of the page to switch to, starting from 0.
           If negative, the last page will be used. If greater
           than the number of pages in the notebook, nothing
           will be done.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
