\alias{gtkTreeStoreIterIsValid}
\name{gtkTreeStoreIterIsValid}
\title{gtkTreeStoreIterIsValid}
\description{WARNING: This function is slow. Only use it for debugging and/or testing
purposes.}
\usage{gtkTreeStoreIterIsValid(object, iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeStore}}]  A \verb{\link{GtkTreeStore}}.}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  A \verb{\link{GtkTreeIter}}.}
}
\details{Checks if the given iter is a valid iter for this \verb{\link{GtkTreeStore}}.  

  Since  2.2}
\value{[logical] \code{TRUE} if the iter is valid, \code{FALSE} if the iter is invalid.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
