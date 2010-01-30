\alias{gtkCTreeNewWithTitles}
\name{gtkCTreeNewWithTitles}
\title{gtkCTreeNewWithTitles}
\description{
Create a new \verb{\link{GtkCTree}} widget with the given titles for the columns.
\strong{WARNING: \code{gtk_ctree_new_with_titles} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeNewWithTitles(columns = 1, tree.column = 0, titles, show = TRUE)}
\arguments{
\item{\verb{columns}}{[integer] Number of columns.}
\item{\verb{tree.column}}{[integer] Which column has the tree graphic; 0 = leftmost.}
\item{\verb{titles}}{[character] The titles for the columns.}
}
\value{[\verb{\link{GtkWidget}}] The \verb{\link{GtkCTree}} widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
