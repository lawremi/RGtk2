\alias{gtkNotebookAppendPage}
\name{gtkNotebookAppendPage}
\title{gtkNotebookAppendPage}
\description{Appends a page to \code{notebook}.}
\usage{gtkNotebookAppendPage(object, child, tab.label = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkNotebook}}]  a \verb{\link{GtkNotebook}}}
\item{\verb{child}}{[\verb{\link{GtkWidget}}]  the \verb{\link{GtkWidget}} to use as the contents of the page.}
\item{\verb{tab.label}}{[\verb{\link{GtkWidget}}]  the \verb{\link{GtkWidget}} to be used as the label for the page,
            or \code{NULL} to use the default label, 'page N'.}
}
\value{[integer]  the index (starting from 0) of the appended
page in the notebook, or -1 if function fails}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
