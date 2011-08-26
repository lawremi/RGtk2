\alias{gtkNotebookGetNthPage}
\name{gtkNotebookGetNthPage}
\title{gtkNotebookGetNthPage}
\description{Returns the child widget contained in page number \code{page.num}.}
\usage{gtkNotebookGetNthPage(object, page.num)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{page.num}}{the index of a page in the notebook, or -1
to get the last page.}
}
\value{[\code{\link{GtkWidget}}] the child widget, or \code{NULL} if \code{page.num} is
out of bounds. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
