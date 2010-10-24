\alias{gtkTreeModelForeach}
\name{gtkTreeModelForeach}
\title{gtkTreeModelForeach}
\description{Calls func on each node in model in a depth-first fashion.  
If \code{func} returns \code{TRUE}, then the tree ceases to be walked, and 
\code{\link{gtkTreeModelForeach}} returns.}
\usage{gtkTreeModelForeach(object, func, user.data = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}}
\item{\verb{func}}{A function to be called on each row}
\item{\verb{user.data}}{User data to passed to func.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
