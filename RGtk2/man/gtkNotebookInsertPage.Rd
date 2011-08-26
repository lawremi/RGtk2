\alias{gtkNotebookInsertPage}
\name{gtkNotebookInsertPage}
\title{gtkNotebookInsertPage}
\description{Insert a page into \code{notebook} at the given position.}
\usage{gtkNotebookInsertPage(object, child, tab.label = NULL, position = -1)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{the \code{\link{GtkWidget}} to use as the contents of the page.}
\item{\verb{tab.label}}{the \code{\link{GtkWidget}} to be used as the label for the page,
or \code{NULL} to use the default label, 'page N'. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{position}}{the index (starting at 0) at which to insert the page,
or -1 to append the page after all other pages.}
}
\value{[integer] the index (starting from 0) of the inserted
page in the notebook, or -1 if function fails}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
