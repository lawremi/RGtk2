\alias{gtkNotebookGetMenuLabelText}
\name{gtkNotebookGetMenuLabelText}
\title{gtkNotebookGetMenuLabelText}
\description{Retrieves the text of the menu label for the page containing
   \code{child}.}
\usage{gtkNotebookGetMenuLabelText(object, child)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{the child widget of a page of the notebook.}
}
\value{[character] the text of the tab label, or \code{NULL} if the
widget does not have a menu label other than
the default menu label, or the menu label widget
is not a \code{\link{GtkLabel}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
