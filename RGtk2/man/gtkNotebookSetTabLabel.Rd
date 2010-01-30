\alias{gtkNotebookSetTabLabel}
\name{gtkNotebookSetTabLabel}
\title{gtkNotebookSetTabLabel}
\description{Changes the tab label for \code{child}. If \code{NULL} is specified
for \code{tab.label}, then the page will have the label 'page N'.}
\usage{gtkNotebookSetTabLabel(object, child, tab.label = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkNotebook}}]  a \verb{\link{GtkNotebook}}}
\item{\verb{child}}{[\verb{\link{GtkWidget}}]  the page}
\item{\verb{tab.label}}{[\verb{\link{GtkWidget}}]  the tab label widget to use, or \code{NULL} for default tab
            label.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
