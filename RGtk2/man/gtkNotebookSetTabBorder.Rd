\alias{gtkNotebookSetTabBorder}
\name{gtkNotebookSetTabBorder}
\title{gtkNotebookSetTabBorder}
\description{
Sets the width the border around the tab labels
in a notebook. This is equivalent to calling
gtk_notebook_set_tab_hborder (\code{notebook}, \code{border.width}) followed
by gtk_notebook_set_tab_vborder (\code{notebook}, \code{border.width}).
\strong{WARNING: \code{gtk_notebook_set_tab_border} is deprecated and should not be used in newly-written code.  
Sets the width the border around the tab labels
in a notebook. This is equivalent to calling
gtk_notebook_set_tab_hborder (\code{notebook}, \code{border.width}) followed
by gtk_notebook_set_tab_vborder (\code{notebook}, \code{border.width}).  }
}
\usage{gtkNotebookSetTabBorder(object, border.width)}
\arguments{
\item{\code{object}}{[\code{\link{GtkNotebook}}]  a \code{\link{GtkNotebook}}}
\item{\code{border.width}}{[numeric]  width of the border around the tab labels.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
