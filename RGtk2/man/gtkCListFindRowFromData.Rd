\alias{gtkCListFindRowFromData}
\name{gtkCListFindRowFromData}
\title{gtkCListFindRowFromData}
\description{
Searches the CList for the row with the specified data.
\strong{WARNING: \code{gtk_clist_find_row_from_data} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListFindRowFromData(object, data)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCList}} to search.}
\item{\verb{data}}{The data to search for a match.}
}
\value{[integer] The number of the matching row, or -1 if no match could be found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
