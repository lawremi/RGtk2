\alias{gtkTreeSelectionSelectedForeach}
\name{gtkTreeSelectionSelectedForeach}
\title{gtkTreeSelectionSelectedForeach}
\description{Calls a function for each selected node. Note that you cannot modify
the tree or selection from within this function. As a result,
\code{\link{gtkTreeSelectionGetSelectedRows}} might be more useful.}
\usage{gtkTreeSelectionSelectedForeach(object, func, data = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeSelection}}.}
\item{\verb{func}}{The function to call for each selected node.}
\item{\verb{data}}{user data to pass to the function.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
