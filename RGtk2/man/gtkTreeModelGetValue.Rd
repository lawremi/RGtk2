\alias{gtkTreeModelGetValue}
\name{gtkTreeModelGetValue}
\title{gtkTreeModelGetValue}
\description{Initializes and sets \code{value} to that at \code{column}.
When done with \code{value},}
\usage{gtkTreeModelGetValue(object, iter, column)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}.}
\item{\verb{iter}}{The \code{\link{GtkTreeIter}}.}
\item{\verb{column}}{The column to lookup the value at.}
}
\value{
A list containing the following elements:
\item{\verb{value}}{(inout) (transfer none) An empty \verb{R object} to set.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
