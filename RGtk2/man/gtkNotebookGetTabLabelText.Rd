\alias{gtkNotebookGetTabLabelText}
\name{gtkNotebookGetTabLabelText}
\title{gtkNotebookGetTabLabelText}
\description{Retrieves the text of the tab label for the page containing
   \code{child}.}
\usage{gtkNotebookGetTabLabelText(object, child)}
\arguments{
\item{\code{object}}{[\code{\link{GtkNotebook}}]  a \code{\link{GtkNotebook}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  a widget contained in a page of \code{notebook}}
}
\value{[character] value: the text of the tab label, or \code{NULL} if the
               tab label widget is not a \code{\link{GtkLabel}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
