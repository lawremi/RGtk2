\alias{gtkCListSetRowData}
\name{gtkCListSetRowData}
\title{gtkCListSetRowData}
\description{
Sets data for the specified row.  This is the same as calling gtk\_clist\_set\_row\_data\_full(clist, row, data, NULL).
\strong{WARNING: \code{gtk_clist_set_row_data} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetRowData(object, row, data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{row}}{[integer] The row to affect.}
\item{\code{data}}{[R object] The data to set for the row.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
