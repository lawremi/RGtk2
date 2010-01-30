\alias{gtkNotebookGetTabLabel}
\name{gtkNotebookGetTabLabel}
\title{gtkNotebookGetTabLabel}
\description{Returns the tab label widget for the page \code{child}. \code{NULL} is returned
if \code{child} is not in \code{notebook} or if no tab label has specifically
been set for \code{child}.}
\usage{gtkNotebookGetTabLabel(object, child)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkNotebook}}]  a \verb{\link{GtkNotebook}}}
\item{\verb{child}}{[\verb{\link{GtkWidget}}]  the page}
}
\value{[\verb{\link{GtkWidget}}]  the tab label}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
