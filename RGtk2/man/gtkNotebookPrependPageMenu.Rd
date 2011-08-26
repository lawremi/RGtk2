\alias{gtkNotebookPrependPageMenu}
\name{gtkNotebookPrependPageMenu}
\title{gtkNotebookPrependPageMenu}
\description{Prepends a page to \code{notebook}, specifying the widget to use as the
label in the popup menu.}
\usage{gtkNotebookPrependPageMenu(object, child, tab.label = NULL, menu.label = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{the \code{\link{GtkWidget}} to use as the contents of the page.}
\item{\verb{tab.label}}{the \code{\link{GtkWidget}} to be used as the label for the page,
or \code{NULL} to use the default label, 'page N'. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{menu.label}}{the widget to use as a label for the page-switch
menu, if that is enabled. If \code{NULL}, and \code{tab.label}
is a \code{\link{GtkLabel}} or \code{NULL}, then the menu label will be
a newly created label with the same text as \code{tab.label};
If \code{tab.label} is not a \code{\link{GtkLabel}}, \code{menu.label} must be
specified if the page-switch menu is to be used. \emph{[  \acronym{allow-none}  ]}}
}
\value{[integer] the index (starting from 0) of the prepended
page in the notebook, or -1 if function fails}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
