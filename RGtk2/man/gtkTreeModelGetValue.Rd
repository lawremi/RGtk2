\alias{gtkTreeModelGetValue}
\name{gtkTreeModelGetValue}
\title{gtkTreeModelGetValue}
\description{Sets initializes and sets \code{value} to that at \code{column}.}
\usage{gtkTreeModelGetValue(object, iter, column)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}.}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  The \code{\link{GtkTreeIter}}.}
\item{\code{column}}{[integer]  The column to lookup the value at.}
}
\value{
A list containing the following elements:
\item{\code{value}}{[R object]  An empty \code{R object} to set.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
