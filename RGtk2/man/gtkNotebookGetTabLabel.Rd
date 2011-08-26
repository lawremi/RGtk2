\alias{gtkNotebookGetTabLabel}
\name{gtkNotebookGetTabLabel}
\title{gtkNotebookGetTabLabel}
\description{Returns the tab label widget for the page \code{child}. \code{NULL} is returned
if \code{child} is not in \code{notebook} or if no tab label has specifically
been set for \code{child}.}
\usage{gtkNotebookGetTabLabel(object, child)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{the page}
}
\value{[\code{\link{GtkWidget}}] the tab label. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
