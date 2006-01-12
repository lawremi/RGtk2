\alias{gtkNotebookGetTabLabel}
\name{gtkNotebookGetTabLabel}
\title{gtkNotebookGetTabLabel}
\description{Returns the tab label widget for the page \code{child}. \code{NULL} is returned
if \code{child} is not in \code{notebook} or if no tab label has specifically
been set for \code{child}.}
\usage{gtkNotebookGetTabLabel(object, child)}
\arguments{
\item{\code{object}}{[\code{\link{GtkNotebook}}]  a \code{\link{GtkNotebook}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  the page}
}
\value{[\code{\link{GtkWidget}}]  the tab label}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
