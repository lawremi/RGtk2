\alias{gtkNotebookAppendPage}
\name{gtkNotebookAppendPage}
\title{gtkNotebookAppendPage}
\description{Appends a page to \code{notebook}.}
\usage{gtkNotebookAppendPage(object, child, tab.label = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkNotebook}}]  a \code{\link{GtkNotebook}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  the \code{\link{GtkWidget}} to use as the contents of the page.}
\item{\code{tab.label}}{[\code{\link{GtkWidget}}]  the \code{\link{GtkWidget}} to be used as the label for the page,
            or \code{NULL} to use the default label, 'page N'.}
}
\value{[integer]  the index (starting from 0) of the appended
page in the notebook, or -1 if function fails}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
