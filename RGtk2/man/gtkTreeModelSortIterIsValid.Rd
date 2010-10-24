\alias{gtkTreeModelSortIterIsValid}
\name{gtkTreeModelSortIterIsValid}
\title{gtkTreeModelSortIterIsValid}
\description{\strong{WARNING: This function is slow. Only use it for debugging and/or testing purposes.}}
\usage{gtkTreeModelSortIterIsValid(object, iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModelSort}}.}
\item{\verb{iter}}{A \code{\link{GtkTreeIter}}.}
}
\details{Checks if the given iter is a valid iter for this \code{\link{GtkTreeModelSort}}.
  Since 2.2}
\value{[logical] \code{TRUE} if the iter is valid, \code{FALSE} if the iter is invalid.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
