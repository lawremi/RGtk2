\alias{gtkNotebookAppendPage}
\name{gtkNotebookAppendPage}
\title{gtkNotebookAppendPage}
\description{Appends a page to \code{notebook}.}
\usage{gtkNotebookAppendPage(object, child, tab.label = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{the \code{\link{GtkWidget}} to use as the contents of the page.}
\item{\verb{tab.label}}{the \code{\link{GtkWidget}} to be used as the label for the page,
or \code{NULL} to use the default label, 'page N'. \emph{[  \acronym{allow-none}  ]}}
}
\value{[integer] the index (starting from 0) of the appended
page in the notebook, or -1 if function fails}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
