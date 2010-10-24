\alias{gtkNotebookQueryTabLabelPacking}
\name{gtkNotebookQueryTabLabelPacking}
\title{gtkNotebookQueryTabLabelPacking}
\description{
Query the packing attributes for the tab label of the page
containing \code{child}.
\strong{WARNING: \code{gtk_notebook_query_tab_label_packing} has been deprecated since version 2.20 and should not be used in newly-written code. Modify the \verb{"tab-expand"} and
  \verb{"tab-fill"} child properties instead.}
}
\usage{gtkNotebookQueryTabLabelPacking(object, child)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{the page}
}
\value{
A list containing the following elements:
\item{\verb{expand}}{location to store the expand value (or NULL)}
\item{\verb{fill}}{location to store the fill value (or NULL)}
\item{\verb{pack.type}}{location to store the pack_type (or NULL)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
