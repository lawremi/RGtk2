\alias{gtkNotebookGetTabLabelText}
\name{gtkNotebookGetTabLabelText}
\title{gtkNotebookGetTabLabelText}
\description{Retrieves the text of the tab label for the page containing
   \code{child}.}
\usage{gtkNotebookGetTabLabelText(object, child)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkNotebook}}]  a \verb{\link{GtkNotebook}}}
\item{\verb{child}}{[\verb{\link{GtkWidget}}]  a widget contained in a page of \code{notebook}}
}
\value{[character]  the text of the tab label, or \code{NULL} if the
              tab label widget is not a \verb{\link{GtkLabel}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
