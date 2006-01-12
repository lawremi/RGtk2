\alias{gtkNotebookSetTabLabel}
\name{gtkNotebookSetTabLabel}
\title{gtkNotebookSetTabLabel}
\description{Changes the tab label for \code{child}. If \code{NULL} is specified
for \code{tab.label}, then the page will have the label 'page N'.}
\usage{gtkNotebookSetTabLabel(object, child, tab.label = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkNotebook}}]  a \code{\link{GtkNotebook}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  the page}
\item{\code{tab.label}}{[\code{\link{GtkWidget}}]  the tab label widget to use, or \code{NULL} for default tab
            label.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
