\alias{gtkNotebookInsertPageMenu}
\name{gtkNotebookInsertPageMenu}
\title{gtkNotebookInsertPageMenu}
\description{Insert a page into \code{notebook} at the given position, specifying
the widget to use as the label in the popup menu.}
\usage{gtkNotebookInsertPageMenu(object, child, tab.label = NULL, menu.label = NULL, position = -1)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkNotebook}}]  a \verb{\link{GtkNotebook}}}
\item{\verb{child}}{[\verb{\link{GtkWidget}}]  the \verb{\link{GtkWidget}} to use as the contents of the page.}
\item{\verb{tab.label}}{[\verb{\link{GtkWidget}}]  the \verb{\link{GtkWidget}} to be used as the label for the page,
            or \code{NULL} to use the default label, 'page N'.}
\item{\verb{menu.label}}{[\verb{\link{GtkWidget}}]  the widget to use as a label for the page-switch
             menu, if that is enabled. If \code{NULL}, and \code{tab.label}
             is a \verb{\link{GtkLabel}} or \code{NULL}, then the menu label will be
             a newly created label with the same text as \code{tab.label};
             If \code{tab.label} is not a \verb{\link{GtkLabel}}, \code{menu.label} must be
             specified if the page-switch menu is to be used.}
\item{\verb{position}}{[integer]  the index (starting at 0) at which to insert the page,
           or -1 to append the page after all other pages.}
}
\value{[integer]  the index (starting from 0) of the inserted
page in the notebook}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
