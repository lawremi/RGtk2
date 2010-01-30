\alias{gtkTreeModelGetValue}
\name{gtkTreeModelGetValue}
\title{gtkTreeModelGetValue}
\description{Sets initializes and sets \code{value} to that at \code{column}.  When done with \code{value}.}
\usage{gtkTreeModelGetValue(object, iter, column)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeModel}}]  A \verb{\link{GtkTreeModel}}.}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  The \verb{\link{GtkTreeIter}}.}
\item{\verb{column}}{[integer]  The column to lookup the value at.}
}
\value{
A list containing the following elements:
\item{\verb{value}}{[R object]  An empty \verb{R object} to set.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
