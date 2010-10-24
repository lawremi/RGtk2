\alias{gtkCTreeNewWithTitles}
\name{gtkCTreeNewWithTitles}
\title{gtkCTreeNewWithTitles}
\description{
Create a new \code{\link{GtkCTree}} widget with the given titles for the columns.
\strong{WARNING: \code{gtk_ctree_new_with_titles} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeNewWithTitles(columns = 1, tree.column = 0, titles, show = TRUE)}
\arguments{
\item{\verb{columns}}{Number of columns.}
\item{\verb{tree.column}}{Which column has the tree graphic; 0 = leftmost.}
\item{\verb{titles}}{The titles for the columns.}
}
\value{[\code{\link{GtkWidget}}] The \code{\link{GtkCTree}} widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
