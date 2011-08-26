\alias{gtkNotebookSetCurrentPage}
\name{gtkNotebookSetCurrentPage}
\title{gtkNotebookSetCurrentPage}
\description{Switches to the page number \code{page.num}. }
\usage{gtkNotebookSetCurrentPage(object, page.num)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{page.num}}{index of the page to switch to, starting from 0.
If negative, the last page will be used. If greater
than the number of pages in the notebook, nothing
will be done.}
}
\details{Note that due to historical reasons, GtkNotebook refuses
to switch to a page unless the child widget is visible. 
Therefore, it is recommended to show child widgets before
adding them to a notebook.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
