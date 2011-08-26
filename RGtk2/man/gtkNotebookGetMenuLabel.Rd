\alias{gtkNotebookGetMenuLabel}
\name{gtkNotebookGetMenuLabel}
\title{gtkNotebookGetMenuLabel}
\description{Retrieves the menu label widget of the page containing \code{child}.}
\usage{gtkNotebookGetMenuLabel(object, child)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{a widget contained in a page of \code{notebook}}
}
\value{[\code{\link{GtkWidget}}] the menu label, or \code{NULL} if the
notebook page does not have a menu label other
than the default (the tab label).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
