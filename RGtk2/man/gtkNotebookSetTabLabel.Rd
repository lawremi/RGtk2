\alias{gtkNotebookSetTabLabel}
\name{gtkNotebookSetTabLabel}
\title{gtkNotebookSetTabLabel}
\description{Changes the tab label for \code{child}. If \code{NULL} is specified
for \code{tab.label}, then the page will have the label 'page N'.}
\usage{gtkNotebookSetTabLabel(object, child, tab.label = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{the page}
\item{\verb{tab.label}}{the tab label widget to use, or \code{NULL} for default tab
label. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
