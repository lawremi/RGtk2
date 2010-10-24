\alias{gtkNotebookSetTabLabelPacking}
\name{gtkNotebookSetTabLabelPacking}
\title{gtkNotebookSetTabLabelPacking}
\description{
Sets the packing parameters for the tab label of the page
containing \code{child}. See \code{\link{gtkBoxPackStart}} for the exact meaning
of the parameters.
\strong{WARNING: \code{gtk_notebook_set_tab_label_packing} has been deprecated since version 2.20 and should not be used in newly-written code. Modify the \verb{"tab-expand"} and
  \verb{"tab-fill"} child properties instead.
  Modifying the packing of the tab label is a deprecated feature and
  shouldn't be done anymore.}
}
\usage{gtkNotebookSetTabLabelPacking(object, child, expand, fill, pack.type)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{the child widget}
\item{\verb{expand}}{whether to expand the tab label or not}
\item{\verb{fill}}{whether the tab label should fill the allocated area or not}
\item{\verb{pack.type}}{the position of the tab label}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
